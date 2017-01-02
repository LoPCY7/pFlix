Rails.application.routes.draw do
  get 'categories/index'

  resources :reviews

  get 'movies/index'

  resources :posts
  root 'posts#index'
end
