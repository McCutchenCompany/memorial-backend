module DISCOUNT_CODE
  extend ActiveSupport::Concern

  included do
    before_create :set_code

    validates :code, uniqueness: true

    default_scope { order(created_at: :desc)}
  end

  private
  def set_code
    self.code = SecureRandom.hex(4) unless self.code.present?
  end
end