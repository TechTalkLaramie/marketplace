class ReviewsController < ApplicationController
  before_filter :setup_associations
  def new

  end

  def create
    @review.attributes = params[:review].permit(:rating, :description)
    @review.save

    redirect_to profile_path(@review.user)
  end

  protected
  def setup_associations
    @order = Order.find(params[:order_id])
    @service = Service.find(params[:service_id])
    @review = Review.new
    @review.order = @order
    if @service.user == current_user
      @review.user = @order.user
    else
      @review.user = @service.user
    end
    @review.from_user_id = current_user.id
  end
end
