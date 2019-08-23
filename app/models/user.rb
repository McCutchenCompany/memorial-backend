class User < ApplicationRecord
  include UUID
  default_scope { order(created_at: :desc) }

  has_one :album_email
  
  has_many :user
  has_many :charge
  has_many :photos
  has_many :user_organizations, dependent: :delete_all
  has_many :user_memorials, dependent: :delete_all
  
  has_many :organizations, through: :user_organizations
  has_many :memorials, through: :user_memorials
  has_many :roles, through: :user_organizations
  
  def self.can_create(user)
    puts 'Checked if user can create'
    if user[:licenses] > user[:licenses_in_use]
      true
    else
      false
    end
  end

  def self.select_without *columns
    select(column_names - columns.map(&:to_s))
  end
end
