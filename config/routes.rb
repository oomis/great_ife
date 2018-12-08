Rails.application.routes.draw do
  resources :rents
  resources :buys
  devise_for :oaues
  get 'contest/index'
  get 'oaue/index'
  #devise_for :accommodations
  devise_for :shops
  resources :goods
  #get 'events/show'
  resources :shops
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'carousel/show'
  get 'category/show'
  get 'pages/show'
  get 'home/show'
  get '/oaue', to: 'oaue#index', as: :oaue
  get '/contest', to: 'contest#index', as: :contest
  get 'shops/index'
  #get 'accommodation/index'
  get '/secret', to: 'shops#secret', as: :secret
  resources :carousel, :category, :pages, :oaue, :contest, only: [:show, :index]
  root 'home#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
