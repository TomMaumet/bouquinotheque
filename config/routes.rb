Rails.application.routes.draw do
  get 'playlist_items/create'
  root to: "readings#index"

  devise_for :users

  resources :playlists, except: [:new, :edit]

  resources :books, only: [:index, :new, :show, :create] do
    resources :reviews, only: [:index, :create]
  end

  resources :readings, only: [:new, :index, :show, :update, :destroy, :create] do
    resources :playlist_items, only: [:create]
  end

  resources :playlists, except: [:create]

  get 'discovers', to: 'discovers#index'

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
