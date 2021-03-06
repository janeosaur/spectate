Rails.application.routes.draw do
  root "home#index"
  get "/fetch_month", to: "home#by_month", as: "fetch_month"

  devise_for :users
  resources :favorite_events, only: [:create, :destroy]
  resources :favorite_teams, only: [:create, :destroy]
  resources :favorite_players, only: [:create, :destroy]

  get "/users/", to: "users#index", as: "users"
  get "/users/:id", to: "users#show", as: "user"

  get "/events", to: "events#index", as: "events"
  get "/events/admin", to: "events#admin", as: "events_admin"
  get "/events/new", to: "events#new", as: "new_event"
  post "/events", to: "events#create", as: "create_event"
  get "/events/:id", to: "events#show", as: "event"
  get "/events/:id/edit", to: "events#edit", as: "edit_event"
  patch "/events/:id", to: "events#update", as: "update_event"
  delete "/events/:id", to: "events#destroy", as: "destroy_event"
  match "search" => "events#search", via: [:get, :post], as: :search # route for ransack search

  get "/teams", to: "teams#index", as: "teams"
  get "/teams/new", to: "teams#new", as: "new_team"
  get "/teams/:id", to: "teams#show", as: "team"
  post "/teams", to: "teams#create", as: "create_team"
  get "/teams/:id/edit", to: "teams#edit", as: "edit_team"
  patch "/teams/:id", to: "teams#update", as: "update_team"
  delete "/teams/:id", to: "teams#destroy", as: "destroy_team"

  get "/players", to: "players#index", as: "players"
  get "/players/new", to: "players#new", as: "new_player"
  get "/players/:id", to: "players#show", as: "player"
  post "/players", to: "players#create", as: "create_player"
  get "/players/:id/edit", to: "players#edit", as: "edit_player"
  patch "/players/:id", to: "players#update", as: "update_player"
  delete "/players/:id", to: "players#destroy", as: "destroy_player"

  get "/events/:event_id/teams/new", to: "event_teams#new", as: "add_team_select"
  post "/events/:event_id/teams", to: "event_teams#create", as: "add_team"
  delete "/events/:event_id/teams/:id", to: "event_teams#destroy", as: "delete_team"

  get "/teams/:team_id/players/new", to: "team_players#new", as: "add_player_select"
  post "/teams/:team_id/players", to: "team_players#create", as: "add_player"
  delete "/teams/:team_id/players/:id", to: "team_players#destroy", as: "delete_player"

  match "*path" => redirect("/"), via: :all # route to redirect users to root if they enter invalid URL


end
