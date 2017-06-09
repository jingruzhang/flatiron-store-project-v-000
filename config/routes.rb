Rails.application.routes.draw do

  devise_for :users

  root 'store#index', as: 'store'

  resources :items, only: [:show]
  resources :categories, only: [:show, :index]
  resources :users, only: [:show]
  resources :carts, only: [:show]
  resources :line_items, only: [:create]
  post 'carts/:id/checkout', to: 'carts#checkout', as: 'checkout'

end
