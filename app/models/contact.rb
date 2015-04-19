class Contact
	include ActiveModel::Model

	attr_accessor :full_name, :phone_number, :email, :company, :message

	validates_presence_of :full_name, :phone_number, :email, :message


	
			
end