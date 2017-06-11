class FavoriteEventsController < ApplicationController
  before_action :set_event

  def create
    if Favorite.create(favorited: @event, user: current_user)
      redirect_back(fallback_location: root_path)
      flash[:notice] = "Saved as favorite"
    else
      flash[:error] = "Something went wrong..."
    end
  end

  def destroy
    Favorite.where(favorited_id: @event.id, user_id: current_user.id).first.destroy
    redirect_back(fallback_location: root_path)
    flash[:notice] = "Removed from favorites"
  end

  private

  def set_event
    @event = Event.friendly.find(params[:format] || params[:id])
  end

end
