Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/one_recipe_url' => 'recipes#one_recipe_action'

  get '/' => 'recipes#index'

  get '/recipes' => 'recipes#index'

  get '/recipes/new' => 'recipes#new' #these 2 are pairs
  post '/recipes' => 'recipes#create'

  get '/recipes/:id' => 'recipes#show'

  get '/recipes/:id/edit' => 'recipes#edit' #these 2 are pairs
  patch '/recipes/:id' => 'recipes#update'

  delete '/recipes/:id' => 'recipes#destroy'

  get'/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
