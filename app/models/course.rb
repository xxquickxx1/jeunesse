class Course < ActiveRecord::Base
	has_many :courseitems
	has_many :notifications, as: :notiable
end
