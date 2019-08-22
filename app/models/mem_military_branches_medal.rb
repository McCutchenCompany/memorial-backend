class MemMilitaryBranchesMedal < ApplicationRecord
  include UUID

  belongs_to :memorial_military_branch, required: true
  belongs_to :medal, required: true
end
