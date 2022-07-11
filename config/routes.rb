Rails.application.routes.draw do
  ###Ingredients Routes
  get "/ingredients" => "ingredients#index"
  post "/ingredients" => "ingredients#create"
  get "/ingredients/:id" => "ingredients#show"
  delete "/ingredients/:id" => "ingredients#destroy"
end
