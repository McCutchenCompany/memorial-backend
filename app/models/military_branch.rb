class MilitaryBranch < ApplicationRecord
  include UUID
  default_scope { order(created_at: :desc) }

  has_many :military_ranks

  has_many :memorial_military_branches, dependent: :delete_all
  has_many :memorials, through: :memorial_military_branches
  has_many :military_branch_medals, dependent: :delete_all
  has_many :medals, through: :military_branch_medals

end
