module ApplicationHelper
	def navigation_menu
  presenter = Refinery::Pages::MenuPresenter.new(refinery_menu_pages, self)
  presenter.css = "right"
  presenter.list_tag_css = ""
  presenter.selected_css = ""
  presenter.max_depth = 12 # prevents dropdown menus, which don't render correctly
  presenter
end

def footer_menu
  menu_items = Refinery::Menu.new(Refinery::Page.footer_menu_pages)
  presenter = Refinery::Pages::MenuPresenter.new(menu_items, self)

  presenter.max_depth = 12
  presenter
end


def is_admin?(object)
    if object.admin == true
      true
    else
      false
    end
end

def authenticate_admin(object)
    redirect_to root_url if current_user.admin == false || current_user.admin == nil
end


end
