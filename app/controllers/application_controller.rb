class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_devise_params, if: :devise_controller?
  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
  end

  protected

    def authenticate_admin!
      unless (user_signed_in? && current_user.role == "admin")
        flash[:alert] = "Admin Access Only"
        redirect_to root_path
      end
    end


end
