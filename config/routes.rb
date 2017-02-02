Rails.application.routes.draw do
  get "/products", to: 'products#index'
  get "/products/new", to: 'products#new'
  get "/products/:id", to: 'products#show'
  post "/products", to: 'products#create'
  get "/products/:id/edit", to: 'products#edit'
  patch "/products/:id", to: 'products#update'
  delete "/products/:id", to: 'products#destroy'

  get "/suppliers", to: 'suppliers#index'

  get "/suppliers/:id", to: 'suppliers#show'
  get "/signup", to:'users#new'
  post "/users", to:'users#create'
end
