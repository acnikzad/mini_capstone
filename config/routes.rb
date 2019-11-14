Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do

    get "/photos" => "products#index"

    get "/photos/:id" => "products#show"

    post "/photos" => "products#create"

    patch "/photos/:id" => "products#update"

    delete "/photos/:id" => "products#destroy"

  end

end
