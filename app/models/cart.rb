class Cart < ActiveRecord::Base
  belongs_to :product
  belongs_to :user

  def self.user_cart_sum(params)
    carts = Cart.where(user_id: params[:user_id])
    sum = 0
    carts.each { |cart| sum += cart.product.price * cart.count}
    (sum * 1.08).to_i
  end

  def self.user_cart_fare(params)
    if params[:sum] >= 2000
      0
    else
      500
    end
  end
end
