class AddPublicPostToMemorial < ActiveRecord::Migration[5.2]
  def change
    add_column :memorials, :public_post, :boolean, default: true
    add_column :memorials, :published, :boolean, default: false
  end
end
