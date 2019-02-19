class AddTitleToTimelines < ActiveRecord::Migration[5.2]
  def change
    add_column :timelines, :title, :string
    add_column :timelines, :event, :string
  end
end
