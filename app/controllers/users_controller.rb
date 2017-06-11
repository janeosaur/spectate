class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    set_user
  end


  private

  def set_user
    @user = User.friendly.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :slug)
  end

  def require_admin #change this to make sure current user is the owner
    if current_user.nil? || current_user.admin? == false
      redirect_back(fallback_location: root_path) #redirect user to previous page
      flash[:notice] = "Error, you must be an admin"
    end
  end


end
