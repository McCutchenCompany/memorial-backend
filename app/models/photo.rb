class Photo < ApplicationRecord
  include UUID

  belongs_to :memorial
  belongs_to :user
end
