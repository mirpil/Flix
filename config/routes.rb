Flix::Application.routes.draw do
  get 'about' => 'movies#about'
  get 'privacy' => 'movies#privacy'
  resources :movies
  root 'movies#index'
end
