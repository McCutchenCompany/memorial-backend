class Location < ApplicationRecord
  include UUID

  belongs_to :memorial

  def self.find_in_range(range)
    @locations = Location.where.where(:latitude => range[:bottom].to_f..range[:top].to_f).where(:longitude => range[:left].to_f..range[:right].to_f)
    location_array = []
    @locations.each { |location| 
      if Memory.find_by(uuid: location[:memorial_id])[:published]
        location_array.push(location)
      end
    }
    location_array
  end
end
