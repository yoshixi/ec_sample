class ShopsController < ApplicationController

  def index
    @shops = Shop.all
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shops_params)

    if @shop.save
      redirect_to action: 'products', id: @shop.id
    else
      redirect_to :new
    end
  end

  def edit
    @shop = Shop.find(params[:id])
  end

  def update
    @shop = Shop.find(params[:id])
    if @shop.update(shops_params)
      redirect_to :products_shop , notice: 'update success'
    else
      redirect_to :edit_shop , notice: 'update fails'
    end

  end

  def products
    @products = Product.find(params[:id])
    render template: "products/index"
  end

  private

  def shops_params
    params.require(:shop).permit(:name)
  end

end
