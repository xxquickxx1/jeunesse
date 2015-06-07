class SubscriptionController < ApplicationController
  def create
  		if current_user
  				@sub = current_user.subscriptions.create(course_id: params[:course_id], user_id: params[:user_id])
  					if @sub.save
  							redirect_to :back, notice: 'Subscribed'
  						else
  							redirect_to :back, alert: 'Sorry there was a problem'
  					end
  		end
  end

  def destroy
  	if current_user
  				@sub = current_user.subscriptions.where(course_id: params[:course_id], user_id: params[:user_id]).first
  					if @sub.destroy
  							redirect_to :back, notice: 'Unsubscribed'
  						else
  							redirect_to :back, alert: 'Sorry there was a problem'
  					end
  		end
  end

  private


end
