class Photo < ApplicationRecord
  include UUID

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
end
