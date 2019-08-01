class CreateUserOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :user_organizations, primary_key: "uuid", id: :binary, limit: 36 do |t|
      t.string :user_id
      t.string :organization_id

      t.timestamps
    end

    add_column :memorials, :invite_link, :string, default: false
  end
end
