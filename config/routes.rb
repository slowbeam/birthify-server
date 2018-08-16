Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :songs, only: [:index, :update]
      resources :login, only: [:index]
      resources :users, only: [:index]
      get 'logging-in', :to => 'users#create'
    end
  end


end
