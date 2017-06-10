class EventsController < ApplicationController
  before_action :require_admin, only: [:new, :create, :edit, :update, :destroy]

  # get "/events", to: "events#index", as: "events"
  def index
    @q = Event.ransack(params[:q])
    @events = @q.result
  end

  def search
    index
    render :index
  end

  # get "/events/new", to: "events#new", as: "new_event"
  def new
    @event = Event.new
  end

  # post "/events", to: "events#create", as: "create_event"
  def create
    @event = Event.create(event_params)
    if @event.save
      flash[:notice] = "Success, event successfully added"
      redirect_to events_path
    else
      flash[:error] = @event.errors.full_messages.join(" ")
      redirect_to new_event_path
    end
  end

  # get "/events/:id", to: "events#show", as: "event"
  def show
    set_event
  end

  # get "/events/:id/edit", to: "events#edit", as: "edit_event"
  def edit
    set_event
  end

  # patch "/events/:id", to: "events#update", as: "update_event"
  def update
    set_event
    @event.update_attributes(event_params)
    flash[:notice] = "Success, event was updated"
    redirect_to event_path(@event)
  end

  # delete "/events/:id", to: "events#destroy", as: "destroy_event"
  def destroy
    set_event
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


  # get this looked at
  def require_admin
    if current_user.nil? || current_user.admin? == false
      redirect_back(fallback_location: root_path) #redirect user to previous page
      flash[:notice] = "Error, you must be an admin"
    end
  end

end
