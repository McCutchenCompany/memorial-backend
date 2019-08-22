class Medal < ApplicationRecord
  include UUID

  has_many :military_branch_medals, dependent: :delete_all
  has_many :military_branches, through: :military_branch_medals
  has_many :mem_military_branches_medals, dependent: :delete_all
  has_many :memorial_military_branches, through: :mem_military_branches_medals
end
