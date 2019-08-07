class Organization < ApplicationRecord
  include UUID
  include INVITE_LINK
  
  has_many :memorials
  has_many :user_organizations, dependent: :delete_all
  has_many :users, through: :user_organizations

  def self.select_without *columns
    select(column_names - columns.map(&:to_s))
  end

  def except_keys *keys
    self.as_json(except: keys)
  end

  def is_owner user
    if @user_org = self.user_organizations.where(user_id: user[:uuid]).where(role_id: ENV["OWNER_ROLE"])[0]
      true
    else
      false
    end
  end

  def is_member user
    if @user_org = self.user_organizations.where(user_id: user[:uuid]).where(role_id: ENV["MEMBER_ROLE"])[0]
      true
    else
      false
    end
  end
end
