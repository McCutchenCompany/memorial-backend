class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles, primary_key: "uuid", id: :binary, limit: 36 do |t|
      t.string :name

      t.timestamps
    end

    add_column :user_memorials, :role_id, :string, default: ENV['EDITOR_ROLE']
    add_column :user_organizations, :role_id, :string, default: ENV['MEMBER_ROLE']

    Role.create(uuid: ENV['OWNER_ROLE'], name: "Owner") unless Role.where(uuid: ENV['OWNER_ROLE']).length > 0
    Role.create(uuid: ENV['EDITOR_ROLE'], name: "Editor") unless Role.where(uuid: ENV['EDITOR_ROLE']).length > 0
    Role.create(uuid: ENV['MEMBER_ROLE'], name: "Member") unless Role.where(uuid: ENV['MEMBER_ROLE']).length > 0

    UserMemorial.find_each do |m|
      m.update(role_id: ENV['OWNER_ROLE'])
    end
  end
end
