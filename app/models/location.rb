class Location < ApplicationRecord
  include UUID

  belongs_to :memorial

  def self.find_in_range(range)
    Location.where(:latitude => range[:bottom].to_f..range[:top].to_f).where(:longitude => range[:left].to_f..range[:right].to_f)
  end
end
