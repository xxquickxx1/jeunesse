class Story < ActiveRecord::Base
	belongs_to :user

	validates_presence_of :title, :description, :place
end
