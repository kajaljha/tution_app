class RegistrationsController < Devise::RegistrationsController
  layout 'devise_layout'

  def new
    super
  end

  protected
  
  def after_update_path_for resource
    root_url
  end

  def after_sign_up_path_for(resource)
    root_path
  end

  def sign_up_params
    params.require(:user).permit(:name, :email, :image, :password, :password_confirmation, :auth_token, :subscription_type, :subscription_start_date, :subscription_end_date, :subscribed)
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :image, :password, :password_confirmation, :auth_token, :current_password, :subscription_type, :subscription_start_date, :subscription_end_date, :subscribed)
  end
  
  def update_resource(resource, params)
    resource.update_without_password(params)
  end
end
