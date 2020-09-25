Rails.application.routes.draw do
  devise_for :users
  root  "items#index"
  resources :items 
  resources :users, only: [:new, :create, :show, :destroy]
  resources :orders, only: [:index]
end
