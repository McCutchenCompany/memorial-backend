class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos, primary_key: "uuid", id: :binary, limit: 36 do |t|
      t.string :memorial_id
      t.string :user_id
      t.string :asset_link
      t.string :title
      t.text :description
      t.boolean :published
      t.boolean :denied

      t.timestamps
    end
  end
end
