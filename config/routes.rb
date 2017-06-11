Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
  get "/fetch_month", to: "home#by_month", as: "fetch_month"

  get "/events", to: "events#index", as: "events"
  get "/events/new", to: "events#new", as: "new_event"
  post "/events", to: "events#create", as: "create_event"
  get "/events/:id", to: "events#show", as: "event"
  get "/events/:id/edit", to: "events#edit", as: "edit_event"
  patch "/events/:id", to: "events#update", as: "update_event"
  delete "/events/:id", to: "events#destroy", as: "destroy_event"

  # route to redirect users to root if they enter invalid URL
  match "*path" => redirect("/"), via: :all

  # route for ransack search
  match "search" => "events#search", via: [:get, :post], as: :search

end
