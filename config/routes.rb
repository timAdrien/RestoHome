Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  get 'widgets' => 'widgets#index'
  root 'villes#index'
  resources :restaurants
  resources :connection
  resources :widgets
  resources :panier
  resources :users
  resources :widgets
  resources :villes
end
