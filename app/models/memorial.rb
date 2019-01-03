class Memorial < ApplicationRecord
  include UUID

  has_one :location
  has_one :user

  has_many :timeline
  has_many :memory

  def self.search(params)
    records = all
    if params[:query]
      records = records.where(
                  'LOWER(CONCAT_WS(" ", first_name, middle_name, last_name)) LIKE :search', search: "%#{params[:query].downcase}%"
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
      else 
        entry[:latitude] = nil
        entry[:longitude] = nil
      end
      with_locations.push(entry)
    }
    with_locations
  end
end
