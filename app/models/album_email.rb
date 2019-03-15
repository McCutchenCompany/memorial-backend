class AlbumEmail < ApplicationRecord
  include UUID

  belongs_to :memorial
  has_one :user
end
