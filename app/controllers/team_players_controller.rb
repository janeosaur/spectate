class TeamPlayersController < ApplicationController
  before_action :require_admin
  before_action :set_team, only: [:create, :destroy]

  # get "/teams/:team_id/players/new", to: "team_players#new", as: "add_player_select"
  def new
    @players = Player.all
  end

  # post "/teams/:team_id/players", to: "team_players#create", as: "add_player"
  def create
    if params[:team_id]
      @player = Player.find_by (player_params)
      # unless - to make sure team doesn't get added more than once to an event
      @team.players << @player unless @team.players.include? @player
      redirect_to @team
    end
  end

  # delete "/teams/:team_id/players/:id", to: "team_players#destroy", as: "delete_player"
  def destroy
    if params[:team_id]
      @player = Player.friendly.find params[:id]
      @team.players.delete @player
      redirect_to @team
    end
  end

  private

  def set_team
    @team = Team.friendly.find(params[:team_id])
  end

  def player_params
    params.require(:player).permit(:gamer_tag, :id, :slug)
  end

  def require_admin
    if current_user.nil? || current_user.admin? == false
      redirect_back(fallback_location: root_path) #redirect user to previous page
      flash[:notice] = "Error, you must be an admin"
    end
  end
end
