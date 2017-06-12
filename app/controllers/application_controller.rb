class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :load_tweets

  before_action :configure_permitted_parameters, if: :devise_controller?

  def load_tweets
    @tweets = $client.user_timeline('rubyinside', count:20)
  end

  protected

  def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me,
      :first_name, :last_name, :country, :fav_event, :fav_player, :fav_team, :admin, :twitter,
      :instagram, :cover_photo, :photo]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

end
