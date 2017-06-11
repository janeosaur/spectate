Rails.application.routes.draw do
  root "home#index"
  get "/fetch_month", to: "home#by_month", as: "fetch_month"

  devise_for :users
  resources :favorite_events, only: [:create, :destroy]
  
  get "/users/", to: "users#index", as: "users"
  get "/users/:id", to: "users#show", as: "user"

  get "/events", to: "events#index", as: "events"
  get "/events/new", to: "events#new", as: "new_event"
  post "/events", to: "events#create", as: "create_event"
  get "/events/:id", to: "events#show", as: "event"
  get "/events/:id/edit", to: "events#edit", as: "edit_event"
  patch "/events/:id", to: "events#update", as: "update_event"
  delete "/events/:id", to: "events#destroy", as: "destroy_event"
  match "search" => "events#search", via: [:get, :post], as: :search # route for ransack search



  match "*path" => redirect("/"), via: :all # route to redirect users to root if they enter invalid URL


end
