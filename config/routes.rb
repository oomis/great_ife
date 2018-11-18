Rails.application.routes.draw do
  devise_for :accommodations
  devise_for :shops
  resources :goods
  get 'events/show'
  resources :accommodations
  resources :shops
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'carousel/show'
  get 'category/show'
  get 'pages/show'
  get 'home/show'
  get 'events/index'
  get 'shops/index'
  get 'accommodation/index'
  get '/secret', to: 'shops#secret', as: :secret
  resources :carousel, :category, :pages, :oauevents, only: [:show, :index]
  root 'home#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
