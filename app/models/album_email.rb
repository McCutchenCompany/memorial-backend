class AlbumEmail < ApplicationRecord
  include UUID
  default_scope { order(created_at: :desc) }

  belongs_to :memorial
  has_one :user
end
