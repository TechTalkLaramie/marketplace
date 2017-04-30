class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    '/profiles/wizard' # Or :prefix_to_your_route
  end

  def update_resource(resource, params)
    resource.update_without_password(params)
  end
end
