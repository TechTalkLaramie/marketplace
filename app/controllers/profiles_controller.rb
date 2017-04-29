class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  def wizard
	  @user = current_user
  end
  def submit_wizard
	  current_user.update_attributes(params[:user].permit(:phone,:name))
	  redirect_to "/dashboard"
  end
end
