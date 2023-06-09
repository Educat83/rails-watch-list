Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'lists#index'
  resources :lists do
    resources :bookmarks, only: %i[new create]
  end
  resources :movies, only: %i[index show]
  resources :bookmarks, only: %i[edit update destroy]
end
