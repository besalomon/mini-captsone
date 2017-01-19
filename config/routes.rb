Rails.application.routes.draw do
  get "/products", to: 'products#all_products'
end
