Rails.application.routes.draw do
  devise_for :users
  resources :movies do
    resources :reviews, except: [:show, :index]
  end
  get 'categories/index'


  get 'movies/index'

  resources :posts
  root 'movies#index'
end
