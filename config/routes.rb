Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do

    get "/products" => "products#index"
    get "/products/:id" => "products#show"
    post "/products" => "products#create"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"


    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    post "/orders" => "orders#create"
    get "/orders" => "orders#index"

    post "/cart" => "cartedproducts#create"
    get "/cart" => "cartedproducts#index"

  end
  
   get "/products" => "products#index"
   get "/products/new" => "products#new"
   post "/products" => "products#create"
   get "/products/:id" =>"products#show"
   get "/products/:id/edit" => "products#edit"
   patch "/products/:id" => "products#update"
   delete "products/:id" => "products#destroy"

end
