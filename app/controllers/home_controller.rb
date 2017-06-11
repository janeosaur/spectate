class HomeController < ApplicationController
  def index
    @events = Event.all
  end

  # get "/fetch_month", to: "events#by_month", as: "fetch_month"
  def by_month
    # p params[:month]
    @selected = Event.where('extract(month from date) = ?', params[:month].to_i)
    # p @selected
    respond_to do |format|
      format.js
    end
  end

end
