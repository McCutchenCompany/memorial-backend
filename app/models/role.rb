class Role < ApplicationRecord
  has_many :user
  has_many :organization
  has_many :memorial

end
