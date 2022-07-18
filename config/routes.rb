Rails.application.routes.draw do
  get "/recipes" => "recipes#index"
  post "/recipes" => "recipes#create"
  get "/recipes/:id" => "recipes#show"
  patch "/recipes/:id" => "recipes#update"
  delete "recipes/:id" => "recipes#destroy"
  ###Ingredients Routes
  get "/ingredients" => "ingredients#index"
  post "/ingredients" => "ingredients#create"
  get "/ingredients/:id" => "ingredients#show"
  delete "/ingredients/:id" => "ingredients#destroy"
  ###Users Routes
  post "/users" => "users#create"
  ###Sessions Routes
  post "/sessions" => "sessions#create"
end
