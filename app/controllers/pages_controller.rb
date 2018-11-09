class PagesController < ApplicationController
  def show
    @category = Category.find_by(id: params[:category_id])
    @pages = @category.pages
  end

  def index
    @category = Category.find_by(id: params[:category_id])
    @pages = @category.pages
  end
end
