class OrdersController < ApplicationController

def create
  product = Product.find_by(id: params[:product_id])

  subtotal = product.price * params[:quantity].to_i
  tax = params[:quantity].to_i * product.tax
  total = subtotal + tax
  order = Order.new(
  user_id:session[:user_id],
  product_id:params[:product_id],
  quantity:params[:quantity],
  subtotal: subtotal,
  tax: tax,
  total: total
      )
    order.save

  end
end

