Rails.application.routes.draw do
  resources :book_orders
  resources :reviews
  resources :books
  resources :authors
  resources :suppliers
  resources :orders
  resources :customers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
