class MemorialMedal < ApplicationRecord
  include UUID
  default_scope { order(created_at: :desc) }

  belongs_to :memorial, required: true
  belongs_to :medal, required: true
end
