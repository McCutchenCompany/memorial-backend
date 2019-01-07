class Charge < ApplicationRecord
  include UUID
  
  belongs_to :user
end
