class PagesController < ApplicationController
  def show
    @page = Page.find(params[:id])
  end

  def index
    @category = Category.find_by(id: params[:category_id])
    @pages = @category.pages
  end
end
