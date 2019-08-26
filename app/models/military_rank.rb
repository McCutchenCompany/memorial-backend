class MilitaryRank < ApplicationRecord
  include UUID
  default_scope { order(order: :asc) }

  has_one :military_branch
  has_many :memorial_military_branch
end
