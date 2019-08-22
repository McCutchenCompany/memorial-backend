class MemorialMedal < ApplicationRecord
  include UUID

  belongs_to :memorial, required: true
  belongs_to :medal, required: true
end
