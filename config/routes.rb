Rails.application.routes.draw do
  
  resources :users do 
    resources :admin
  end
  resources :recipes do 
    resources :comments
    get '/favorite_recipe' => 'favorites#favorite'
    get '/unfavorite_recipe' => 'favorites#unfavorite'
  end

  root to: 'recipes#home'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  delete '/logout' => 'sessions#destroy'
  get 'auth/google_oauth2/callback' => 'sessions#create'


  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get 'recipes_sorted_by_favorite' => 'recipes#sorted_favorite'
  get 'recipes_sorted_by_cook_time' => 'recipes#sorted_cook_time'
  get 'recipes_sorted_by_newest' => 'recipes#sorted_newest'

  get 'all_favorites' => 'favorites#show'


end
