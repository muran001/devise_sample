class Users::RegistrationsController < Devise::RegistrationsController

  before_action :configure_sign_up_params, only: [ :create ]
  before_action :configure_update_params, only: [ :update ]


  private

  def configure_sign_up_params
    devise_parameter_sanitizer.for(:sign_up) do |u| 
      u.permit(:email, :password, :password_confirmation, :role)
    end
  end

  def configure_update_params
    devise_parameter_sanitizer.for(:account_update) do |u| 
      u.permit(:email, :password, :password_confirmation, :current_password,:role)
    end
  end

end
