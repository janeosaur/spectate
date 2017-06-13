class FavoritePlayersController < ApplicationController
  before_action :set_player

  def create
    if Favorite.create(favorited: @player, user: current_user)
      redirect_back(fallback_location: root_path)
      flash[:notice] = "Saved as favorite"
    else
      flash[:error] = "Something went wrong..."
    end
  end

  def destroy
    Favorite.where(favorited_id: @player.id, user_id: current_user.id).first.destroy
    redirect_back(fallback_location: root_path)
    flash[:notice] = "Removed from favorites"
  end

  private

  def set_player
    @player = Player.friendly.find(params[:format] || params[:id])
  end

end
