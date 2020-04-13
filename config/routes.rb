Rails.application.routes.draw do
  devise_for :users
  # 下の行は削除する
  # get 'messages/index

  # root "messages#index"
  root "users#show"
  resources :users, only: [:edit, :update, :show]
  resources :messages, only: [:index]
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
  end
  resources :posts
end