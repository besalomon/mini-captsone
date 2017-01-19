class ProductsController < ApplicationController
	def all_products
		@display_all = Product.all
		render "all_products.html.erb"
	end
end
