Rails.application.routes.draw do
  resources :watchlists
  resources :biddings
  resources :products
  resources :categories
  resources :users
  post "/users/sign_in", to: "users#sign_in"
  get "/products/filter/:id", to: "products#filter"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
