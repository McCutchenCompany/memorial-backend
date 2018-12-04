class Memorial < ApplicationRecord
  include UUID

  has_one :location
end
