class AccountController < ApplicationController
	before_filter :authenticate_user!
	layout "account"
  def index
  	
  end

  def show
  end
end
