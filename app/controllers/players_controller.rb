class PlayersController < ApplicationController
  before_action :require_admin, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  # get "/players", to: "players#index", as: "players"
  def index
    @players = Player.all
  end

  # get "/players/:id", to: "players#show", as: "player"
  def show
  end

  # get "/players/new", to: "players#new", as: "new_player"
  def new

  end

  # post "/players", to: "players#create", as: "create_player"
  def create

  end

  # get "/players/:id/edit", to: "players#edit", as: "edit_player"
  def edit

  end

  # patch "/players/:id", to: "players#update", as: "update_player"
  def update

  end

  # delete "/players/:id", to: "players#destroy", as: "destroy_player"
  def destroy

  end

  private

  def player_params
    params.require(:event).permit(:name, :country, :twitter, :instagram, :photo, :role, :slug)
  end

  def set_player
    @player = Player.friendly.find(params[:id])
  end

  def require_admin
    if current_user.nil? || current_user.admin? == false
      redirect_back(fallback_location: root_path) #redirect user to previous page
      flash[:notice] = "Error, you must be an admin"
    end
  end

end
