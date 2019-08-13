class AddUnlockedToMemorials < ActiveRecord::Migration[5.2]
  def change
    add_column :memorials, :unlocked, :boolean, default: false

    add_column :organizations, :image, :string
    add_column :organizations, :posY, :integer, default: 0
    add_column :organizations, :posX, :integer, default: 0
    add_column :organizations, :scale, :integer, default: 100
    add_column :organizations, :rot, :integer, default: 0
    Organization.reset_column_information
    Organization.update_all(posY: 0)
    Organization.update_all(posX: 0)
    Organization.update_all(scale: 100)
    Organization.update_all(rot: 0)
  end
end
