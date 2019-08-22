class MemorialMilitaryBranch < ApplicationRecord
  include UUID

  has_many :mem_military_branches_medals, dependent: :delete_all
  has_many :medals, through: :mem_military_branches_medals
  
  belongs_to :memorial, required: true
  belongs_to :military_branch, required: true

end
