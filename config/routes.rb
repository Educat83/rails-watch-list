Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists do
    resources :bookmarks, only: [:create, :new]
    resources :movies, only: [:create, :new, :index, :show]
  end
  resources :bookmarks, only: [:show, :edit, :update, :destroy]
end
