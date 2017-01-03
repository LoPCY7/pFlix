Rails.application.routes.draw do
  devise_for :users
  resources :movies
  get 'categories/index'

  resources :reviews

  get 'movies/index'

  resources :posts
  root 'movies#index'
end
