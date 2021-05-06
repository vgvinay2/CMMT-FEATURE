Rails.application.routes.draw do
  get 'home/index'
  resources :products
  devise_for :users
  root 'products#index'
end
