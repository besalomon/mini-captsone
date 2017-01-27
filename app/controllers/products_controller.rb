class ProductsController < ApplicationController
	def index

    if params[:sortby]
      @products = Product.all.order(price: params[:sortby])
    else
		  @products = Product.all
    end
	end

  def show
    @product = Product.find_by(id: params[:id])
    render "product.html.erb"
  end

  def new
  end

  def create
    product = Product.new({name: params[:name], price: params[:price], image: params[:image], description: params[:description]})
    product.save
    redirect_to "/products/#{product.id}"
    flash[:success] = "Product Created"
  end

  def edit
  @product = Product.find_by(id:params[:id])
  render "edit.html.erb"
  end

  def update
    product = Product.find_by(id:params[:id])
    product.name = params[:name]
    product.price = params[:price]
    product.image = params[:image]
    product.description = params[:description]
    product.save
    redirect_to "/products/#{product.id}"
    flash[:info] = "Product Updated"
  end

  def destroy
    product = Product.find_by(id:params[:id])
    product.delete
    redirect_to "/products"
    flash[:warning] = "Product Deleted!"
  end
end
