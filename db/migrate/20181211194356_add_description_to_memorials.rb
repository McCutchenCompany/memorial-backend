class AddDescriptionToMemorials < ActiveRecord::Migration[5.2]
  def change
    add_column :memorials, :description, :string
  end
end
