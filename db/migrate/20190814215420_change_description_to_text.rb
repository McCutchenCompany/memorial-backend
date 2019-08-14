class ChangeDescriptionToText < ActiveRecord::Migration[5.2]
  def change
    change_column :organizations, :description, :text
  end
end
