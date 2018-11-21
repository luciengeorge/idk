Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: :registrations }
  root to: 'pages#home'
  get '/profile', to: 'pages#profile'
  resources :wishes, except: [:new, :create]
  resources :categories, only: [:index, :show]
  resources :events, except: [:new, :create]
  resources :activities, only: [:show] do
    resources :events, only: [:new, :create]
    resources :wishes, only: [:new, :create]
  end
  resources :conversations do
    resources :messages
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
