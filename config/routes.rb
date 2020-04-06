Rails.application.routes.draw do
  devise_for :users
  root 'messages#index'
  # root 'groups#index'
  # get 'home/index'
  get 'messages/index'

  # root to: "home#index"
end