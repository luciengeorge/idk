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
    @ip = request.remote_ip
    @user_location = Geocoder.search(@ip).first.data['loc']
    @location = Geocoder.search('london').first&.coordinates
    if @user_location
      @user_location = @user_location.split(',')
      @user_location.map! do |location|
        location.to_f
      end
      puts "=========================USERLOCATION: #{@user_location}============================="
      forecast = JSON.parse(open("http://api.openweathermap.org/data/2.5/forecast?lat=#{@user_location[0]}&lon=#{@user_location[1]}&APPID=#{ ENV['WEATHER_KEY'] }").read)
    elsif @location
      puts "=========================LOCATION: #{@location}======================================"
      forecast = JSON.parse(open("http://api.openweathermap.org/data/2.5/forecast?lat=#{@location[0]}&lon=#{@location[1]}&APPID=#{ ENV['WEATHER_KEY'] }").read)
    else
      forecast = JSON.parse(open("http://api.openweathermap.org/data/2.5/forecast?lat=51.5074&lon=0.1278&APPID=#{ ENV['WEATHER_KEY'] }").read)
    end
    days_array = forecast['list']
    @today = days_array[0]['weather'][0]['description']
    @temperature = (days_array[0]['main']['temp'] - 273.15).round
  end
end
