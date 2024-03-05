Rails.application.routes.draw do
  devise_for :users do
    resources :playlists, only: [:new, :create]
  end
    resources :playlists, only: [:show, :index, :update, :destroy]
  root to: "readings#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    resources :books, only: [:index, :show, :create] do
      resources :readings, only: [:create]
    end
      resources :readings, only: [:index, :show, :update, :destroy] do
        resources :reviews, only: [:create]
      end
      resources :book_stores
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
