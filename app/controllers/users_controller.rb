class UsersController < ApplicationController
  
  def new

  end

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
      )
    if user.save
      session[:user_id] = user.id
      flash[:success] = "Successfully Created Account"
      redirect_to '/products'
    else
      flash[:warning] = "Invalid Password or Email"
      redirect_to '/signup'
    end
  end

  def destroy
    session[:user_id] = nil
    redict_to "/login"
  end
end
