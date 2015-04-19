class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :instantiate_mail



  def instantiate_mail
  	@contact = Contact.new
  end
end
