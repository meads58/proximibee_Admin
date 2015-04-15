class ProductsController < ApplicationController

  def new
    @product = Product.new
  end

  def index
    @products = Product.all
  end

  def create
    Product.create(product_param)
    flash[:notice] = "Product successfully added"
    redirect_to new_product_path()
  end

  def edit
     @product = Product.find(params[:id])
  end

  def update
    beacon = Beacon.find(params[:id])
    @product = Product.find(params[:id])
    @product.update(product_beacon_param)
    flash[:notice] = "Product added to Beacon"
    redirect_to '/'
  end

  def show
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    flash[:notice] = 'Product deleted successfully'
    redirect_to new_product_path
  end

  def product_param
    params.require(:product).permit(:name, :price, :owner, :image)
  end

  def product_beacon_param
    params.require(:beacon).permit(:beacon_id)
  end
end
