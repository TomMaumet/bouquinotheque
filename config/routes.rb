Rails.application.routes.draw do
  get 'playlist_items/create'
  root to: "readings#index"

  devise_for :users

  resources :playlists, except: [:new, :edit]

  resources :books, only: [:index, :show, :create] do
    resources :reviews, only: [:index, :create]
  end

<<<<<<< HEAD
  resources :readings, only: [:index, :show, :update, :destroy, :new, :create] do
=======
  resources :readings, only: [:new, :index, :show, :update, :destroy, :create] do
>>>>>>> master
    resources :playlist_items, only: [:create]
  end

  resources :playlists, except: [:create]

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
