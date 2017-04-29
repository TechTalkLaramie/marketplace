class ServicesController < ApplicationController
  before_action :authenticate_user!

  def new
    @service = current_user.services.build
  end

  def create
    @service = current_user.services.build(params[:service].permit([:headline, :description, :price]))

    if @service.save
      redirect_to '/dashboard'
    else
      render :new
    end
  end
  def destroy
    @service = Service.find(params[:id])
    @service.destroy
    redirect_to '/dashboard'
  end

end
