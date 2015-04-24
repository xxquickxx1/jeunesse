Refinery::Blog::Post.class_eval do
  # Whitelist the :image_id parameter for form submission
  attr_accessor :image_id
 belongs_to :image 
end