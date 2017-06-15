class EventTeamsController < ApplicationController
  before_action :require_admin
  before_action :set_event#, only: [:create, :destroy]

  # get "/events/:event_id/teams/new", to: "event_teams#new", as: "add_team_select"
  def new
    @teams = Team.all
  end

  # post "/events/:event_id/teams", to: "event_teams#create", as: "add_team"
  def create
    if params[:event_id]
      @team = Team.find_by (team_params)
      # unless - to make sure team doesn't get added more than once to an event
      @event.teams << @team unless @event.teams.include? @team
      redirect_to @event
    end
  end

  # delete "/events/:event_id/teams/:id", to: "event_teams#destroy", as: "delete_team"
  def destroy
    if params[:event_id]
      @team = Team.friendly.find params[:id]
      @event.teams.delete @team
      redirect_to @event
    end
  end

  private

  def set_event
    @event = Event.friendly.find(params[:event_id])
  end

  def team_params
    # without :id, only optic gaming was saving .. lol
    params.require(:team).permit(:name, :id, :slug)
  end

  def require_admin
    if current_user.nil? || current_user.admin? == false
      redirect_back(fallback_location: root_path) #redirect user to previous page
      flash[:notice] = "Error, you must be an admin"
    end
  end

end
