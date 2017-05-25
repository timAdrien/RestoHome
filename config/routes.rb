Rails.application.routes.draw do
  root 'welcome#index'
  get '/disconnect' => 'account#disconnect'
  resources :adresse
  resources :validate
  resources :panier
  resources :restaurants
  resources :villes
  resources :users
  resources :account
  resources :widgets
end
