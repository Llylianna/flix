Rails.application.routes.draw do
  resources :genres
  resource :session
  resources :users
  root "movies#index"
  get 'signup' => 'users#new'
  get 'movies/filter/:scope' => "movies#index", as: :filtered_movies
  resources :movies do
    resources :reviews
    resources :favorites
  end
end
