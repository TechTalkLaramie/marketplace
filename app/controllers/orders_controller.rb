class OrdersController < ApplicationController
  def new
    @service = Service.find(params[:service_id])
    @order = current_user.orders.build(service_id: params[:service_id])
  end

  def create
    @order = Order.new(params[:order].permit(:appointment_time))
    @order.service_id = params[:service_id]
    @order.user_id = current_user.id
    @order.save!
    flash[:notify] = "Your order was created"
    redirect_to "/dashboard"
  end

  def accept
    @order = Order.find(params[:id])
    @order.accepted_at = Time.now
    @order.save
    redirect_to "/dashboard"
  end

  def complete
    @order = Order.find(params[:id])
    @order.completed_at = Time.now
    @order.save
    redirect_to "/dashboard"
  end
end
