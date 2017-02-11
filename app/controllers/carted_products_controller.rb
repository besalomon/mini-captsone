class CartedProductsController < ApplicationController

before_action :authenticate_user!

  def create
   order = Order.where("user_id =? AND completed =?", current_user.id, false)
   if order.first
    if order.first.completed == false
        @number = order.first.id
        cart = CartedProduct.new(

        product_id:params[:product_id],
        order_id: order.first.id, 
        quantity: params[:quantity]

        )
      cart.save
      redirect_to"/checkout"
    end
      
    elsif order.first == nil
     order = Order.new(
        user_id: current_user.id,
        completed: "false"
        )
     order.save

      cart = CartedProduct.new(

        product_id:params[:product_id],
        order_id: order.id, 
        quantity: params[:quantity]

        )
      cart.save
      redirect_to"/checkout"
    end

  end

  def checkout
    orders = Order.where("user_id =? AND completed =?", current_user.id, false)
    @carts = CartedProduct.where(order_id:orders.first.id)
  end
end


# In the carted_products_controller’s create action, first check if an order is already opened( “completed”: false). If one doesn’t exist, create a new order. Then create a new carted_product, and add the order_id from the order you just created, all in the same create action. If an open order already exists, grab the open order’s id instead of created a new order.