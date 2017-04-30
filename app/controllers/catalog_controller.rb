class CatalogController < ApplicationController
	def index
		params[:within] ||= 10
		params[:unit] ||= "miles"
		
		@services = current_user.services_in_my_area(params[:within].to_i)
	end

	def show
		@service = Service.find(params[:id])
	end
end
