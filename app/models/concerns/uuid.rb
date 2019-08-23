module UUID
  extend ActiveSupport::Concern

  included do
    before_create :set_uuid

    validates :uuid, uniqueness: true #just to be 110% safe
  end

  private
  def set_uuid
    self.uuid = SecureRandom.uuid unless self.uuid.present?
  end
end
