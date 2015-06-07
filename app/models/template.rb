class Template < ActiveRecord::Base
	belongs_to :user
	has_many :userblogs, dependent: :destroy
end
