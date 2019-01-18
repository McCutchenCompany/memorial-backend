class AddImageFormatToMemorials < ActiveRecord::Migration[5.2]
  def change
    add_column :memorials, :posY, :integer, default: 0
    add_column :memorials, :posX, :integer, default: 0
    add_column :memorials, :scale, :integer, default: 100
    add_column :memorials, :rot, :integer, default: 0
    add_column :timelines, :posY, :integer, default: 0
    add_column :timelines, :posX, :integer, default: 0
    add_column :timelines, :scale, :integer, default: 100
    add_column :timelines, :rot, :integer, default: 0
    Memorial.reset_column_information
    Timeline.reset_column_information
    Memorial.update_all(posY: 0)
    Memorial.update_all(posX: 0)
    Memorial.update_all(scale: 100)
    Memorial.update_all(rot: 0)
    Timeline.update_all(posY: 0)
    Timeline.update_all(posX: 0)
    Timeline.update_all(scale: 100)
    Timeline.update_all(rot: 0)
  end
end
