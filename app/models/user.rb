class User < ApplicationRecord
  include UUID

  has_many :memorial
  has_many :user
  has_many :charge
  has_many :photos

  belongs_to :album_email

  def self.can_create(user)
    puts 'Checked if user can create'
    if user[:licenses] > user[:licenses_in_use]
      true
    else
      false
    end
  end
end
