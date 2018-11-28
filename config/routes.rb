Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: :registrations }
  root to: 'pages#home'
  get '/profile', to: 'pages#profile'
  get '/feed', to: 'pages#feed'
  resources :users, only: [:show] do
    resources :followers, only: [:create]
  end
  resources :followers, only: [:destroy]
  get '/followers/:user_id', to: 'followers#followers', as: 'followers'
  get '/following/:user_id', to: 'followers#following', as: 'following'
  get '/search', to: 'pages#search', as: 'search'
  resources :wishes, except: [:new, :create]
  resources :categories, only: [:index, :show]
  resources :events, except: [:new, :create] do
    resources :comments, only: [:index, :create]
    resources :likes, only: [:create]
    resources :hostings, only: [:create, :new]
  end
  resources :comments, only: [:destroy]
  resources :likes, only: [:destroy]
  resources :activities, only: [:show] do
    resources :events, only: [:new, :create]
    resources :wishes, only: [:new, :create]
  end
  resources :conversations do
    resources :messages
  end

  post '/', to: 'pages#wheel'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
