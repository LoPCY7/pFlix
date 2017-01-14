Rails.application.routes.draw do
  resources :playtimes
  get 'home/index'

  resources :plans
  resources :categories
  resources :shows
  resources :subscribe
  devise_for :users
  resources :movies do
    resources :reviews, except: [:show, :index]
  end
  get 'categories/index'


  get 'movies/index'

  resources :posts
  root 'home#index'
end
