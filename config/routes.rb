Rails.application.routes.draw do
  get "/", to: 'products#index'
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
  get "/login", to:'sessions#new'
  post "/login", to:'sessions#create'
  delete "/logout", to:'sessions#destroy'
  get "images", to:'images#index'
  get "images/:id", to:'images#show'
  get "images/new", to:'images#new'
  post "images", to:'images#create'

  post "/orders", to:'orders#create'

end
