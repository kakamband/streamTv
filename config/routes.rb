Rails.application.routes.draw do
  resources :categories
  
  namespace :api, defaults: {format: :json} do
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'static_pages#root'

  namespace :api, defaults: {format: :json} do 
    resources :users, only: [:create, :show, :index]
    resource :session, only: [:create, :destroy]
    resources :follows, only: [:create, :show, :destroy]
  end

  # resources :conversations, only: [:create, :index]
  # resources :messages, only: [:create]

  # mount ActionCable.server, at: '/cable'


end
