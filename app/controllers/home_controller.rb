class HomeController < ApplicationController
  def index
    # @events = Event.all
  end

  # get "/fetch_month", to: "events#by_month", as: "fetch_month"
  def by_month
    p params[:month]
    @selected = Event.where('extract(month from date) = ?', 07)
    respond_to do |format|
      format.js
    end
  end

  # def show
  #
  #   current_month = Event.where('extract(month from date) = ?', 07)
  # end

  def convert_to_month (event)
    event.date.strftime("%B")
  end

end
