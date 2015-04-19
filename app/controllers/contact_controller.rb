class ContactController < ApplicationController
  def create
  		ContactMailer.notify(params).deliver
  		redirect_to root_url
  end
end
