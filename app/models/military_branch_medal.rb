class MilitaryBranchMedal < ApplicationRecord
  include UUID

  belongs_to :medal
  belongs_to :military_branch
end
