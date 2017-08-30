module ApplicationHelper

  def defalut_product_shop_id
    "1"
    params[:shop_id] if params[:shop_id]
  end

end
