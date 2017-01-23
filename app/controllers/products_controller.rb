class ProductsController < ApplicationController
	def index
		@products = Product.all
		render "all_products.html.erb"
	end
end
