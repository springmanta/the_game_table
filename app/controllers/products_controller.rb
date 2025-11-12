class ProductsController < ApplicationController
  def index
    @products = Product.active.order(created_at: :desc)
  end

  def show
    @product = Product.find(params[:id])
  end
end
