class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations, primary_key: "uuid", id: :binary, limit: 36 do |t|
      t.string :memorial_id
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
