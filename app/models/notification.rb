class Notification < ActiveRecord::Base
	belongs_to :notiable, polymorphic: true
end
