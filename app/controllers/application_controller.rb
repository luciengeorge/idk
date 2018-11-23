class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :store_user_location!, if: :storable_location?
  before_action :authenticate_user!
  before_action :home
  before_action :configure_permitted_parameters, if: :devise_controller?
  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :age, :photo])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:photo, :age, :first_name, :last_name])
  end

  def after_sign_in_path_for(resource_or_scope)
    stored_location_for(resource_or_scope) || super
  end

  def default_url_options
    { host: ENV["HOST"] || "localhost:3000" }
  end

  private

  def storable_location?
    request.get? && is_navigational_format? && !devise_controller? && !request.xhr?
  end

  def store_user_location!
    # :user is the scope we are authenticating
    store_location_for(:user, request.fullpath)
  end

  def home
    @location = Geocoder.search('london').first.coordinates
    forecast = JSON.parse(open("http://api.openweathermap.org/data/2.5/forecast?lat=#{@location[0]}&lon=#{@location[1]}&APPID=#{ ENV['WEATHER_KEY'] }").read)
    days_array = forecast['list']
    @today = days_array[0]['weather'][0]['description']
  end
end
