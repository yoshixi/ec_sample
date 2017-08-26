class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      render plain: "OK"
    else
      render plain: "Bad"
    end
  end

  def show
    #code
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    product = Product.find(params[:id])
    if product.update(product_params)
      render plain: "ok"
    else
      render plain: "bad"
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
  end

  private

  def product_params
    params.require(:product).permit(:name,:price).merge(shop_id: 1)
  end

end
