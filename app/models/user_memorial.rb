class UserMemorial < ApplicationRecord
  include UUID
  
  belongs_to :memorial, required: true
  belongs_to :user, required: true
end
