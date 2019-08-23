class Photo < ApplicationRecord
  include UUID
  default_scope { order(created_at: :desc) }

  belongs_to :memorial
  belongs_to :user

  def self.map_users(photos)
    @photos = []
    @users = User.where(uuid: photos.map{|p| p.user_id})
    photos.each { |photo| 
      entry = photo.as_json
      user = @users.select {|u| u.uuid == photo.user_id}
      user = user[0]
      entry[:first_name] = user[:first_name]
      entry[:last_name] = user[:last_name]
      @photos.push(entry)
    }
    @photos
  end

  def self.map_single_user(photo)
    user = photo.user
    entry = photo.as_json
    entry[:first_name] = user[:first_name]
    entry[:last_name] = user[:last_name]
    return entry
  end

  def self.should_send_email(photo, user)
    @memorial = photo.memorial
    @album_email = AlbumEmail.find_by(memorial_id: @memorial[:uuid])
    if @album_email
      if @album_email[:user_id] == user[:uuid]
        if (Time.now.to_i - @album_email.updated_at.to_i) > 1000
          @album_email.update({user_id: user[:uuid], updated_at: Time.now})
          return true
        else
          return false
        end
      else
        @album_email.update({user_id: user[:uuid]})
        return true
      end
    else
      @album_email = AlbumEmail.new({memorial_id: @memorial[:uuid], user_id: user[:uuid]})
      if @album_email.save
        return true
      end
    end
  end
end
