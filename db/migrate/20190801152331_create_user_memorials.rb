class CreateUserMemorials < ActiveRecord::Migration[5.2]
  def change
    create_table :user_memorials, primary_key: "uuid", id: :binary, limit: 36 do |t|
      t.string :user_id
      t.string :memorial_id
      t.integer :permission, default: 1

      t.timestamps
    end
  end
end
