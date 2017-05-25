Rails.application.routes.draw do
  root 'welcome#index'
  resources :panier
  resources :restaurants
  resources :villes
  resources :users
  resources :widgets
end
