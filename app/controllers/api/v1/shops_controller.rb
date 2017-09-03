class Api::V1::ShopsController < Api::ApplicationController

  def index
    @shops = Shop.all
    render json: @shops
  end


  def create
    @shop = Shop.new(shops_params)

    if @shop.save
      render json: @shop, status: 201
    else
      render json: {errors: @shop.errors.full_messages[0]}, status: 409
    end
  end

 def show
   @shop = Shop.find(params[:id])
   render json: @shop
 end

  def update
    @shop = Shop.find(params[:id])
    if @shop.update(shops_params)
      render json: @shop, status: 204
    else
      render json: {errors: @shop.errors.full_messages[0]}, status: 409
    end

  end

  def products
    @products = Product.find(params[:id])
    render @products
  end

  private

  def shops_params
    params.require(:shop).permit(:name)
  end

end
