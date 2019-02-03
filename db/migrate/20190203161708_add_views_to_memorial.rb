class AddViewsToMemorial < ActiveRecord::Migration[5.2]
  def change
    add_column :memorials, :views, :integer, default: 0
    Memorial.reset_column_information
    Memorial.update_all(views: 0)
  end
end
