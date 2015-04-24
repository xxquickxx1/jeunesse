class HomeController < ApplicationController
  def index

  	@select = Array.new
  		@select = %w(https://joffice.jeunesseglobal.com/signup.asp?locale=en-US&siteurl=tomaszgrabarczyk
  			https://joffice.jeunesseglobal.com/signup.asp?locale=en-US&siteurl=kamilkosa
  			https://joffice.jeunesseglobal.com/signup.asp?locale=en-US&siteurl=alicjajohnson
  			)
  		@sponsor = @select[rand(0-@select.length)]
  end
end
