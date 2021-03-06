Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :songs, only: [:index, :update]
      resources :login, only: [:index]
      resources :users, only: [:index]
      resources :artists, only: [:index, :show]
      resources :genres, only: [:index]
      resources :song_users, only: [:index]
      get 'logging-in', :to => 'users#create'
      get 'load-genre-seeds', :to => 'genres#create'
      get 'search', :to => 'spotify#search'
      get 'create-playlist', :to => 'spotify#create_playlist'
      get 'load-playlist', :to => 'spotify#load_playlist'
      get 'logout', :to => "users#logout"
    end
  end

end
