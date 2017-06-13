class TeamsController < ApplicationController
  before_action :require_admin, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  # get "/teams", to: "teams#index", as: "teams"
  def index
    @teams = Team.all
  end

  # get "/teams/:id", to: "teams#show", as: "team"
  def show
  end

  # get "/teams/new", to: "teams#new", as: "new_team"
  def new
    @team = Team.new
  end

  # post "/teams", to: "teams#create", as: "create_team"
  def create
    @team = Team.create(team_params)
    if @team.save
      flash[:notice] = "Success, team successfully created"
      redirect_to teams_path
    else
      flash[:error] = @event.errors.full_messages.join(" ")
      redirect_to new_team_path
    end
  end

  # get "/teams/:id/edit", to: "teams#edit", as: "edit_team"
  def edit
  end

  # patch "/teams/:id", to: "teams#update", as: "update_team"
  def update
    @team.update_attributes(team_params)
    flash[:notice] = "Success, event was updated"
    redirect_to @team
  end

  # delete "/teams/:id", to: "teams#destroy", as: "destroy_team"
  def destroy
    if current_user.try(:admin?)
      @team.destroy
      redirect_to teams_path
    else
      flash[:notice] = "Error, you need admin status"
      redirect_to teams_path
    end
  end

  private

  def team_params
    params.require(:event).permit(:name, :country, :logo, :founded_in, :twitter, :slug)
  end

  def set_team
    @team = Team.friendly.find(params[:id])
  end

  def require_admin
    if current_user.nil? || current_user.admin? == false
      redirect_back(fallback_location: root_path) #redirect user to previous page
      flash[:notice] = "Error, you must be an admin"
    end
  end

end
