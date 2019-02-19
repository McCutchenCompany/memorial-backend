class CreateMemorials < ActiveRecord::Migration[5.2]
  def change
    create_table :memorials, primary_key: "uuid", id: :binary, limit: 36 do |t|
      t.binary :user_id
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :image
      t.datetime :birth_date
      t.datetime :death_date

      t.timestamps
    end
  end
end
