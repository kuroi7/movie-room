Rails.application.routes.draw do
  get 'movies/search'
  get 'movies/show'

  devise_for :users

  root "users#index"
  resources :users do
    member do
      get :following, :followers, :users_tweets
    end
  end
  resources :messages, only: [:index]
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
  end
  resources :posts
  resources :my_rankings do
    put :sort
  end
  resources :relationships
  resources :movies, only: [:show, :search]
end