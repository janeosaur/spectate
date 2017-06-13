class UsersController < ApplicationController
  before_action :require_admin, only: [:index]

  def index
    @users = User.all
  end

  def show
    set_user
    @fav_events = @user.favorite_events
    @fav_teams = @user.favorite_teams
  end

  private

  def set_user
    @user = User.friendly.find(params[:id])
  end

  def require_admin
    if current_user.nil? || current_user.admin? == false
      redirect_back(fallback_location: root_path) #redirect user to previous page
      flash[:notice] = "Error, you must be an admin"
    end
  end

end
