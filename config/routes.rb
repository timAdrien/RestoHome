Rails.application.routes.draw do
  root 'villes#index'
  resources :restaurants
  resources :connection
  resources :widgets
  resources :panier
  resources :users
  resources :widgets
  resources :villes
end
