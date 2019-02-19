class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users, primary_key: "uuid", id: :binary, limit: 36 do |t|
      t.string :auth0_id
      t.integer :licenses
      t.integer :licenses_in_use
      t.string :first_name
      t.string :last_name
      t.string :email

      t.timestamps
    end
  end
end
