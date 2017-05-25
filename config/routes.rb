Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  resources :widgets
  resources :villes
  resources :restaurants

  root 'welcome#index'
  get 'widgets' => 'widgets#index'
  get 'restaurant' => 'restaurant#index'

end
