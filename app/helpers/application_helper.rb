module ApplicationHelper
	def navigation_menu
  presenter = Refinery::Pages::MenuPresenter.new(refinery_menu_pages, self)
  presenter.css = "right"
  presenter.list_tag_css = ""
  presenter.selected_css = ""
  presenter.max_depth = 12 # prevents dropdown menus, which don't render correctly
  presenter
end



end
