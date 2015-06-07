class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception

  before_action :instantiate_mail
   before_action :configure_permitted_parameters, if: :devise_controller?


    def after_sign_in_path_for(user)
        if !params[:controller].match("refinery")
        account_path
      end
    end

    def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end


  def instantiate_mail
  	@contact = Contact.new
  	 expires_in 60.minutes, :public => true
  end

    protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :email
    devise_parameter_sanitizer.for(:sign_in) << :email
  end
end
