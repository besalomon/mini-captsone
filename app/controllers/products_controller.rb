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

  def edit
  @product = Product.find_by(id:params[:id])
  render "edit.html.erb"
  end

  def update
    @product = Product.find_by(id:params[:id])
    @product.name = params[:name]
    @product.price = params[:price]
    @product.image = params[:image]
    @product.description = params[:description]
    @product.save
  end

  def destroy
    @item = Product.find_by(id:params[:id])
    @item.delete
    render "success.html.erb"
  end
end
