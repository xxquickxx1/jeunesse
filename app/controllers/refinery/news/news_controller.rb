module Refinery
  module News
    class NewsController < ::ApplicationController

      before_action :find_all_news
      before_action :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @new in the line below:
        present(@page)
      end

      def show
        @new = New.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @new in the line below:
        present(@page)
      end

    protected

      def find_all_news
        @news = New.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/news").first
      end

    end
  end
end
