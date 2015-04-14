class ProductsController < ApplicationController

  def new
  end

  def create
    Product.create(product_param)
    flash[:notice] = "Beacon successfully added"
    redirect_to products_path()
  end

  def show

  end

  def product_param
    params.require(:product).permit(:name, :price)
  end

end
