class Medal < ApplicationRecord
  include UUID

  has_many :memorial_medals, dependent: :delete_all
  has_many :military_branch_medals, dependent: :delete_all
  has_many :memorials, through: :memorial_medals
  has_many :military_branches, through: :military_branch_medals
end
