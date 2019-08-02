class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations, primary_key: "uuid", id: :binary, limit: 36 do |t|
      t.string :user_id
      t.integer :licenses, default: 0
      t.integer :licenses_in_use, default: 0
      t.string :name
      t.string :description
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :invite_link

      t.timestamps
    end

    add_column :memorials, :organization_id, :string
  end
end
