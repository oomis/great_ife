Rails.application.routes.draw do
  get 'events/show'
  resources :accommodations
  resources :shops
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'carousel/show'
  get 'category/show'
  get 'pages/show'
  get 'home/show'
  get 'events/show'
  resources :carousel, :category, :pages, :events, only: [:show, :index]
  root 'home#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
