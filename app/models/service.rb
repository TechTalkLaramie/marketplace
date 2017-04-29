class Service < ApplicationRecord
  validates :headline, presence: true
  validates :price, presence: true
end
