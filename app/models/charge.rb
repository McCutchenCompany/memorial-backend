class Charge < ApplicationRecord
  include UUID
  
  default_scope { order(created_at: :desc) }
  belongs_to :user
end
