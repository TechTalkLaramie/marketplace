class Order < ApplicationRecord
  belongs_to :service
  belongs_to :user

  delegate :headline, to: :service
  delegate :description, to: :service
  delegate :price, to: :service

  scope :unaccepted, -> { where(accepted_at: nil) }
  scope :accepted, -> { where("accepted_at IS NOT NULL") }
end
