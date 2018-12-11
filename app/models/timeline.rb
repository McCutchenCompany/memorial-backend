class Timeline < ApplicationRecord
  include UUID

  belongs_to :memorial
end
