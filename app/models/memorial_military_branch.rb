class MemorialMilitaryBranch < ApplicationRecord
  include UUID

  belongs_to :memorial, required: true
  belongs_to :military_branch, required: true
end
