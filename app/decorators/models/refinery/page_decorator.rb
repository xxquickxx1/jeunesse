Refinery::Page.class_eval do
 attr_accessor :show_in_footer

  def self.footer_menu_pages
    where :show_in_footer => true
  end
end