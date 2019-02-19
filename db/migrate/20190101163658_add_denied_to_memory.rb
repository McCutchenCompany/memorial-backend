class AddDeniedToMemory < ActiveRecord::Migration[5.2]
  def change
    add_column :memories, :denied, :boolean, default: false
  end
end
