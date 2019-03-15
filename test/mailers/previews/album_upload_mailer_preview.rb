# Preview all emails at http://localhost:3000/rails/mailers/album_upload_mailer
class AlbumUploadMailerPreview < ActionMailer::Preview
  def album_upload_email_preview
    AlbumUploadMailer.album_upload_email(User.find_by(uuid: "6c948bd9-b2ed-48b5-8af7-7855f83b7ff3"), User.find_by(uuid: "1e4adfd1-6518-4176-9d88-4e48970ebe9f"), Photo.find_by(uuid: "0c1caf03-8fd1-4f14-8295-96dac2b6759e"))
  end
end
