# frozen_string_literal: true

require 'sidekiq/web'
Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }

  root 'products#index'
  post '/add_to_cart', to: 'carts#add_to_cart'
  post 'line_items' => 'line_items#create'
  post 'line_items' => 'line_items#add_quantity'
  delete 'line_items' => 'line_items#destroy'
  put 'products' => 'products#update'
  delete 'products' => 'products#destroy'
  get 'all_orders' => 'orders#show_orders'
  # post 'reviews' => 'reviews#create'
  # post '/add_order_item' => 'orders#add_order_item'
  # post 'orders' => 'orders#create'

  get 'line_items/:id' => 'line_items#show', as: 'line_item'
  delete 'line_items/:id' => 'line_items#destroy'
  post 'line_items/:id/add' => 'line_items#add_quantity', as: 'line_item_add'
  post 'line_items/:id/reduce' => 'line_items#reduce_quantity', as: 'line_item_reduce'
  post 'line_items' => 'line_items#add_quantity'
  # post '/add_to_cart/:product_id' => 'cart#add_to_cart', :as => 'add_to_cart'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  mount Sidekiq::Web => '/sidekiq'
  resources :products do
    resources :reviews
  end

  resources :homes
  resources :carts
  resources :orders
  resources :categories
end
