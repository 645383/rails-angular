class Api::ProductsController < Api::ApplicationController

  respond_to :json

  def index
    respond_with @products = Product.all
  end

  def show
    respond_with @product = Product.find(params[:id])
  end

  private

  def product_params
    params.require(:products).permit(:name, :description, :price)
  end
end
