class UserOrganization < ApplicationRecord
  include UUID
  
  belongs_to :user
  belongs_to :organization
end
