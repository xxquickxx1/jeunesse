module ApplicationHelper
	def navigation_menu
  presenter = Refinery::Pages::MenuPresenter.new(refinery_menu_pages, self)
  presenter.css = "right"
  presenter.menu_tag = :div
  presenter.list_tag_css = "nav"
  presenter.selected_css = ""
  presenter.first_css = ""
  presenter.last_css = ""
  presenter.max_depth = 0 # prevents dropdown menus, which don't render correctly
  presenter
end
end
