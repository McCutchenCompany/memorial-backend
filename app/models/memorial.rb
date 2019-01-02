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
                ).where.not(uuid: nil)

    end

    return records
  end
end
