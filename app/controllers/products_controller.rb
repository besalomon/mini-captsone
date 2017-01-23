class ProductsController < ApplicationController
	def index
		@products = Product.all
		render "all_products.html.erb"
	end

  def show
    @product = Product.find_by(id: params[:id])
    render "product.html.erb"
  end

  def new
  end

  def create
    @var = Product.new({name: params[:name], price: params[:price], image: params[:image], description: params[:description]})
    @var.save
  end
end
