class Memorial < ApplicationRecord
  include UUID

  has_one :location
  has_many :timeline
end
