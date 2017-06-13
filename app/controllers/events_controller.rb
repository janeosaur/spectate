class EventsController < ApplicationController
  before_action :require_admin, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  # match "search" => "events#search", via: [:get, :post], as: :search # route for ransack search
  def search
    index
    render :index
  end

  # get "/events", to: "events#index", as: "events"
  def index
    @q = Event.ransack(params[:q])
    @events = @q.result
    @hash = Gmaps4rails.build_markers(@events) do |event, marker|
      event_path = view_context.link_to event.name, event_path(event)
      marker.lat event.latitude
      marker.lng event.longitude
      marker.title event.name
      marker.infowindow render_to_string(:partial => "/events/info",
        :locals => { :event => event}) # allows use of |event| in partial
    end
  end

  # get "/events/new", to: "events#new", as: "new_event"
  def new
    @event = Event.new
  end

  # post "/events", to: "events#create", as: "create_event"
  def create
    @event = Event.create(event_params)
    if @event.save
      flash[:notice] = "Success, event successfully created"
      redirect_to events_path
    else
      flash[:error] = @event.errors.full_messages.join(" ")
      redirect_to new_event_path
    end
  end

  # get "/events/:id", to: "events#show", as: "event"
  def show
  end

  # get "/events/:id/edit", to: "events#edit", as: "edit_event"
  def edit
  end

  # patch "/events/:id", to: "events#update", as: "update_event"
  def update
    @event.update_attributes(event_params)
    flash[:notice] = "Success, event was updated"
    redirect_to event_path(@event)
  end

  # delete "/events/:id", to: "events#destroy", as: "destroy_event"
  def destroy
    if current_user.try(:admin?)
      @event.destroy
      redirect_to events_path
    else
      flash[:notice] = "Error, you need admin status"
      redirect_to events_path
    end
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

  def require_admin
    if current_user.nil? || current_user.admin? == false
      redirect_back(fallback_location: root_path) #redirect user to previous page
      flash[:notice] = "Error, you must be an admin"
    end
  end

end
