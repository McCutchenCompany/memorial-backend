class UserMemorial < ApplicationRecord
  include UUID
  default_scope { order(created_at: :desc) }
  
  belongs_to :memorial, required: true
  belongs_to :user, required: true
  belongs_to :role
end
