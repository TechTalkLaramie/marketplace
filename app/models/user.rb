class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :services
  has_many :orders, through: :services
  has_many :orders_i_placed, class_name: 'Order'
  has_many :reviews

  acts_as_mappable

  has_attached_file :avatar, styles: { tiny: "75x75#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  def accepted_orders_i_have_or_placed
    (orders.accepted.all + orders_i_placed.accepted.all)
  end

  def services_in_my_area(range,unit=:miles)
    Service.joins(:user).within(range, :units => unit, :origin => [self.lat, self.lng])
  end
end
