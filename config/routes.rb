Rails.application.routes.draw do
  ###Ingredients Routes
  get "/ingredients" => "ingredients#index"
  post "/ingredients" => "ingredients#create"
  delete "/ingredients/:id" => "ingredients#destroy"
end
