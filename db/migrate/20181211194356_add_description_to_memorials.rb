class AddDescriptionToMemorials < ActiveRecord::Migration[5.2]
  def change
    add_column :memorials, :description, :text
  end
end
