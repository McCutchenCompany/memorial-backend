class AlbumUploadMailer < ApplicationMailer
  default from: "mymemorial.help@gmail.com"

  def album_upload_email(user, from, photo)
    @user = user
    @from = from
    @memorial = photo.memorial
    @url = ENV['PAGE_URL']
    mail(to: @user.email, subject: "A new photo has been uploaded to #{@memorial[:first_name]} #{@memorial[:last_name]}'s album")
  end
end
