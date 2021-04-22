Rails.application.routes.draw do
  get 'login/index'
  get 'new_item/index' => 'new_item/index', :as => 'new_item'
  get 'sale_item/index' => 'sale_item/index', :as => 'sale_item'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'product_search/index'=> 'product_search/index', :as => 'search_page'
  resources :provinces
  resources :users
  resources :orders
  resources :categories
  resources :products

  root to: "products#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
