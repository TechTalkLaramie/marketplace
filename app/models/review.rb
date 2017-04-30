class Review < ApplicationRecord
  belongs_to :order
  belongs_to :user
  belongs_to :from_user, class_name: "User"
end
