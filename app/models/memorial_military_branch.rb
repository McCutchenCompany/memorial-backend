class MemorialMilitaryBranch < ApplicationRecord
  include UUID
  default_scope { order(created_at: :desc) }

  belongs_to :military_rank

  has_many :mem_military_branches_medals, -> { order(order: :asc)}, dependent: :delete_all
  has_many :medals, through: :mem_military_branches_medals
  
  belongs_to :memorial, required: true
  belongs_to :military_branch, required: true

end
