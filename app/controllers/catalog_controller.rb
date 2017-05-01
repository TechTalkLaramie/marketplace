class CatalogController < ApplicationController
	def index
		params[:within] ||= 10
		params[:unit] ||= "miles"

    if current_user
      @services = current_user.services_in_my_area(params[:within].to_i)
    else
      @services = Service.all
    end
	end

	def show
		@service = Service.find(params[:id])
	end
end
