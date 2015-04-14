class ProductsController < ApplicationController

  def new
    @product = Product.new
  end

  def index
    @products = Product.all
  end

  def create
    Product.create(product_param)
    flash[:notice] = "Beacon successfully added"
    redirect_to new_product_path()
  end

  def show
  end

  def product_param
    params.require(:product).permit(:name, :price)
  end

end
