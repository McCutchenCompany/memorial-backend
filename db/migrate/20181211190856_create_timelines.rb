class CreateTimelines < ActiveRecord::Migration[5.2]
  def change
    create_table :timelines, primary_key: "uuid", id: :binary, limit: 36 do |t|
      t.string :memorial_id
      t.datetime :date
      t.string :date_format
      t.string :description
      t.string :asset_link
      t.string :asset_type

      t.timestamps
    end
  end
end
