class ServicesController < ApplicationController
  before_action :authenticate_user!

  def new
    @service = current_user.services.build
  end

  def create
    @service = current_user.services.build(params[:service].permit([:headline, :description, :fixed_rate, :price, :seeking_help, :expiration_date]))

    if @service.save
      redirect_to "/profiles/#{current_user.id}"
    else
      render :new
    end
  end
  
  def destroy
    @service = Service.find(params[:id])
    @service.destroy
  end
  
  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])
     @service.update_attributes(params[:service].permit([:headline, :description, :fixed_rate, :price, :seeking_help, :expiration_date]))

    if @service.update_attributes(params[:service].permit([:headline, :description, :fixed_rate, :price]))
      redirect_to "/profiles/#{current_user.id}"
    else
      render :edit
    end
  end
  
end
