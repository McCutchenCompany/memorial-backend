class Organization < ApplicationRecord
  include UUID
  include INVITE_LINK

  belongs_to :user
  
  has_many :memorial

end
