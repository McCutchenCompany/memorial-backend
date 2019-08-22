class CreateMemMilitaryBranchesMedals < ActiveRecord::Migration[5.2]
  def change
    create_table :mem_military_branches_medals, primary_key: "uuid", id: :binary, limit: 36 do |t|
      t.string :memorial_military_branch_id
      t.string :medal_id
      t.datetime :date_awarded
      t.text :description
      t.integer :order

      t.timestamps
    end
  end
end
