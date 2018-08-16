Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :songs, only: [:index, :update]
      resources :login, only: [:index]
      resources :users, only: [:index]
      resources :artists, only: [:index, :show]
      resources :genres, only: [:index]
      get 'logging-in', :to => 'users#create'
      get 'load-genre-seeds', :to => 'genres#create'
    end
  end


end
