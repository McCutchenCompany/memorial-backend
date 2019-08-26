class CreateMilitaryRanks < ActiveRecord::Migration[5.2]
  def change
    create_table :military_ranks, primary_key: "uuid", id: :binary, limit: 36 do |t|
      t.string :military_branch_id
      t.string :name
      t.string :image
      t.integer :order

      t.timestamps
    end

    add_column :memorial_military_branches, :military_rank_id, :string
  end
end
