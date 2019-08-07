class UserOrganization < ApplicationRecord
  include UUID
  
  belongs_to :user, required: true
  belongs_to :organization, required: true
  belongs_to :role


  def self.select_without *columns
    select(column_names - columns.map(&:to_s))
  end
end
