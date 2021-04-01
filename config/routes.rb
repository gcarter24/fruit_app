Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/fruits" => "fruits#index"
    post "/fruits" => "fruits#create"
    get "/fruits/:id" => "fruits#show"
    patch "/fruits/:id" => "fruits#update"
    delete "/fruits/:id" => "fruits#destroy"
  end
end
