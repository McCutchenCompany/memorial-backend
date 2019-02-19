class CreateCharges < ActiveRecord::Migration[5.2]
  def change
    create_table :charges, primary_key: "uuid", id: :binary, limit: 36 do |t|
      t.string :user_id
      t.float :charge

      t.timestamps
    end
  end
end
