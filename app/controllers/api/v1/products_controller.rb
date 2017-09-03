class Api::V1::ProductsController < Api::ApplicationController

  def index
    @products = Product.all
    render json: @products
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      render json: @product, status: 201
    else
      render json: {errors: @product.errors.full_messages[0]}, status: 409
    end
  end

  def show
    @product = Product.find(params[:id])
    render json: @product
  end

  def update
    product = Product.find(params[:id])
    if product.update(product_params)
      render json: @product, status: 204
    else
      render json: {errors: @product.errors.full_messages[0]}, status: 409
    end
  end

  def destroy
    @product = Product.find(params[:id])
    if product.destroy
      render status: 204
    else
      render json: {errors: @product.errors.full_messages[0]}, status: 409
    end
  end

  def search
    @products  = Product.search_product(params[:word])
    render json: @products, status: 204
  end

  private

  def product_params
    params.require(:product).permit(:name,:price, :shop_id,:image)
  end

end
