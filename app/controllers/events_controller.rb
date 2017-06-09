class EventsController < ApplicationController

  # get "/events", to: "events#index", as: "events"
  def index
    @events = Event.all
  end

  # get "/events/new", to: "events#new", as: "new_event"
  def new


  end

  # post "/events", to: "events#create", as: "create_event"
  def create

  end

  # get "/events/:id", to: "events#show", as: "event"
  def show
    set_event
  end

  # get "/events/:id/edit", to: "events#edit", as: "edit_event"
  def edit

  end

  # patch "/events/:id", to: "events#update", as: "update_event"
  def update

  end

  # delete "/events/:id", to: "events#destroy", as: "destroy_event"
  def destroy

  end

  private

  def event_params
    params.require(:event).permit(:name, :organizer, :date, :venue,
      :min_age, :stream, :tickets, :size, :stadium, :vip_tickets,
      :food_drinks, :merch_sold, :city, :country, :slug)
  end

  def set_event
    @event = Event.friendly.find(params[:id])
  end

end
