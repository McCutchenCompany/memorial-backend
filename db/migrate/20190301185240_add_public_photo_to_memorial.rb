class AddPublicPhotoToMemorial < ActiveRecord::Migration[5.2]
  def change
    add_column :memorials, :public_photo, :boolean, default: false
  end
end
