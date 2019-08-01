module INVITE_LINK
  extend ActiveSupport::Concern

  included do
    before_create :set_link

    validates :invite_link, uniqueness: true

    default_scope { order(created_at: :desc) }
  end

  private
  def set_link
    self.invite_link = SecureRandom.uuid unless self.invite_link.present?
  end
end