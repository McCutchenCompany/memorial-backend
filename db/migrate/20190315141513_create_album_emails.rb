class CreateAlbumEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :album_emails, primary_key: "uuid", id: :binary, limit: 36 do |t|
      t.string :memorial_id
      t.string :user_id

      t.timestamps
    end
  end
end
