class Order < ApplicationRecord
  belongs_to :service
  belongs_to :user

  delegate :headline, to: :service
  delegate :description, to: :service
  delegate :price, to: :service

  scope :unaccepted_rejected, -> { where(accepted_at: nil).where("rejected_at IS NOT NULL") }
  scope :unaccepted_awaiting_response, -> { where(accepted_at: nil,rejected_at: nil) }
  scope :unaccepted, -> { where(accepted_at: nil) }
  scope :accepted, -> { where("accepted_at IS NOT NULL") }

  after_initialize :set_default_values
  after_create do
    UserMailer.order_made(self).deliver_now
  end

  def complete?
    completed_at.present?
  end

  protected
  def set_default_values
    self.appointment_time ||= 2.hours.from_now.at_beginning_of_hour
  end

end
