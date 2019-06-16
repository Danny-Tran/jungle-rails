class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
    @review = Review.new
    @order_review = Review.all.order(created_at: :desc).where(product_id: params[:id]).joins(:user_id)
  end

end
