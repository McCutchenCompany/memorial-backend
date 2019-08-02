class Organization < ApplicationRecord
  include UUID
  include INVITE_LINK

  belongs_to :user
  
  has_many :memorial

  def self.select_without *columns
    select(column_names - columns.map(&:to_s))
  end

end
