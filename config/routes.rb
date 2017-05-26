Rails.application.routes.draw do
  root 'welcome#index'
  get '/disconnect' => 'account#disconnect'
  get '/creation' => 'account#creation'
  post '/create' => 'account#create'
  get '/connection' => 'account#connection'
  post '/connect' => 'account#connect'
  resources :adresse
  resources :validate
  resources :panier
  resources :restaurants
  resources :villes
  resources :users
  resources :account
  resources :widgets
end
