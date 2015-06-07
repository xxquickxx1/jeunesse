class Userblog < ActiveRecord::Base
	 extend FriendlyId
	 before_create :generate_slug
	friendly_id :title, use: :slugged
	belongs_to :template




  private
  def generate_slug
    slug = title.gsub(" ", "-")
  end
	 
end
