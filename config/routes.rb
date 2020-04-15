Rails.application.routes.draw do
  devise_for :users

  root "users#show"
  resources :users, only: [:index, :edit, :update, :show]
  resources :messages, only: [:index]
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
  end
  resources :posts
  resources :my_rankings do
    put :sort
  end
  resources :relationships
end