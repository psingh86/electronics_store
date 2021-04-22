Rails.application.routes.draw do
  get 'product_search/index'
  resources :provinces
  resources :users
  resources :orders
  resources :categories
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
