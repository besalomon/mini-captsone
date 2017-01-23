class ProductsController < ApplicationController
	def index
		@products = Product.all
		render "all_products.html.erb"
	end

  def show
    @product = Product.find_by(id: params[:id])
    render "product.html.erb"
  end
end
