Rails.application.routes.draw do

  devise_for :users

  root 'home#top'

  get 'home/about'

  resources :books, only: [:new, :create, :index, :show, :destroy, :edit, :update]

  resources :users, only: [:show, :index, :edit, :update]

end
