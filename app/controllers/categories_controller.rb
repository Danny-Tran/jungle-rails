class CategoriesController < ApplicationController


  def show
    @category = Category.find(params[:id])
    @products = @category.products.order(created_at: :desc)
  end

  def index
    @Categories = Category.all.order(created_at: :desc)
  end

  

end
