class CreateMilitaryBranches < ActiveRecord::Migration[5.2]
  # MILITARY BRANCHES
  def change
    create_table :military_branches, primary_key: "uuid", id: :binary, limit: 36 do |t|
      t.string :name
      t.string :image
      t.text :description

      t.timestamps
    end

    # MEMORIAL MILITARY BRANCHES
    create_table :memorial_military_branches, primary_key: "uuid", id: :binary, limit: 36 do |t|
      t.string :memorial_id
      t.string :military_branch_id
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end

    # MEDALS
    create_table :medals, primary_key: "uuid", id: :binary, limit: 36 do |t|
      t.string :name
      t.string :image

      t.timestamps
    end

    # MEMORIAL_MEDALS
    create_table :memorial_medals, primary_key: "uuid", id: :binary, limit: 36 do |t|
      t.string :memorial_id
      t.string :medal_id
      t.datetime :date_awarded
      t.text :description
      t.integer :order

      t.timestamps
    end

    # MILITARY BRANCH MEDALS
    create_table :military_branch_medals, primary_key: "uuid", id: :binary, limit: 36 do |t|
      t.string :military_branch_id
      t.string :medal_id
      t.integer :order

      t.timestamps
    end
  end
end
