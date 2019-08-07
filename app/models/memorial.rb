class Memorial < ApplicationRecord
  include UUID
  include INVITE_LINK

  has_one :location
  has_one :organization
  has_one :album_email
  
  has_many :timeline
  has_many :memory
  has_many :photos
  has_many :user_memorials, dependent: :delete_all
  has_many :users, through: :user_memorials

  def self.search(params)
    records = all
    if params[:query]
      records = records.where(
                  'LOWER(CONCAT_WS(" ", first_name, middle_name, last_name)) LIKE :search
                   OR LOWER(CONCAT_WS(" ", first_name, last_name)) LIKE :search', search: "%#{params[:query].downcase}%"
                ).where.not(published: false)

    end

    return records
  end

  def self.add_location(memorials)
    with_locations = []
    memorials.each { |memorial| 
      entry = memorial.as_json
      if memorial.location
        entry[:latitude] = memorial.location[:latitude]
        entry[:longitude] = memorial.location[:longitude]
        entry[:location] = memorial.location[:description]
      else 
        entry[:latitude] = nil
        entry[:longitude] = nil
        entry[:location] = nil
      end
      with_locations.push(entry)
    }
    with_locations
  end

  def self.add_view(memorial)
    memorial.update(views: memorial[:views] += 1)
  end

  def self.select_without *columns
    select(column_names - columns.map(&:to_s))
  end

  def org_user user
    if self[:organization_id].nil?
      false
    else
      organization = Organization.find(self[:organization_id])
      true unless organization.users.where(uuid: user[:uuid]).length == 0
    end
  end

  def role user
    if self.org_user user
      return Role.find(ENV["OWNER_ROLE"])
    else
      user_memorial = UserMemorial.where(memorial_id: self[:uuid]).where(user_id: user[:uuid])[0]
      return Role.where(uuid: user_memorial[:role_id]).select("uuid, name")[0]
    end
  end

end
