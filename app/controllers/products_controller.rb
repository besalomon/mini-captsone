class ProductsController < ApplicationController
	def index

    if params[:sort]
      @products = Product.all.order(price: params[:sort])

    elsif params[:discount] == "true"
     
     @products = Product.where("price < ?", 500000)

    elsif params[:find]
      @products = Product.where(name: params[:find])

    else
		  @products = Product.all

    end

	end

  def show
    @image = Image.find_by(id: params[:id])
  if params[:id] == "random"
    @product = Product.all.sample
  else
    @product = Product.find_by(id: params[:id])

  end
  
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
