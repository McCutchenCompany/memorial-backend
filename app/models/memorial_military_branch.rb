class MemorialMilitaryBranch < ApplicationRecord
  include UUID
  default_scope { order(created_at: :desc) }

  belongs_to :military_rank, required: false

  has_many :mem_military_branches_medals, -> { order(order: :asc)}, dependent: :delete_all
  has_many :medals, through: :mem_military_branches_medals

  has_many :honor_military_medals, -> {where(medal_id: [
    "c8e28734-abd2-431e-9403-30b24607d89f",
    "dc448992-6b2d-43dc-a5e2-46ef8d879a51",
    "4a65e518-8b46-482e-a670-a5107a87ec88",
    "7023a692-1956-4c08-aad9-79e2f8af9805",
    "f343b4b9-6d00-4963-8db9-5dd86e1c7e41",
    "321702fd-424f-42bd-8c18-6c008e341fb1"
    ])}, foreign_key: "memorial_military_branch_id", class_name: :MemMilitaryBranchesMedal
  has_many :honor_medals, through: :honor_military_medals
  
  belongs_to :memorial, required: true
  belongs_to :military_branch, required: true

end
