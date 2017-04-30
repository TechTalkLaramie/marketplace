class UserMailer < ApplicationMailer
  default from: '"gitch" <no-reply@gitch.me>'

  def order_made(order)
    @order = order
    mail(
      to: @order.service.user.email,
      subject: "Order placed for #{@order.service.headline}")
  end

  def order_accepted(order)

  end

  def order_completed(order)

  end
end
