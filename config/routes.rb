Rails.application.routes.draw do
  root 'welcome#index'
  resources :panier
  resources :villes
  resources :widgets
end
