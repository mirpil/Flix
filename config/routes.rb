Flix::Application.routes.draw do
  devise_for :users
  get 'about' => 'movies#about'
  get 'privacy' => 'movies#privacy'
  get 'movies/recommended/:placement' => 'movies#recommended'

  resources :movies
  resources :genres, only: :show
  root 'movies#index'
  get 'text-m-for-murder' => 'movies#murder'
end
