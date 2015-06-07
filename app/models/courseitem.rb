class Courseitem < ActiveRecord::Base
	belongs_to :course
	has_many :notifications, as: :notiable
end
