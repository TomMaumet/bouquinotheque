Rails.application.routes.draw do
  get 'playlist_items/create'
  root to: "readings#index"

  devise_for :users
  resources :users, only: [:show]
  resources :book_stores, only: [:index]
  resources :friend_relationships, only: [:create, :destroy]

  resources :playlists, except: [:new, :edit]

  resources :books, only: [:index, :new, :show, :create] do
    resources :reviews, only: [:index, :create]
    resources :suggestions, only: [:create]
  end

  resources :suggestions, only: [:index]

  resources :readings, only: [:new, :index, :show, :update, :destroy, :create] do
    resources :playlist_items, only: [:create]
  end

  get 'discovers', to: 'discovers#index'

  get 'wishlist', to: 'suggestions#wishlist'

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
