class Memorial < ApplicationRecord
  include UUID

  has_one :location
  has_one :user

  has_many :timeline
  has_many :memory
end
