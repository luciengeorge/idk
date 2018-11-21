require 'open-uri'
class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :wheel]

  def wheel
    degrees = params[:totalDegree].to_i % 360
    case degrees
    when 0..30
      category = Category.find_by_title('food')
      redirect_to category_path(category)
    when 31..90
      redirect_to activity_path(Activity.all.sample)
    when 91..160
      category = Category.find_by_title('drink')
      redirect_to category_path(category)
    when 161..210
      category = Category.find_by_title('adventure')
      redirect_to category_path(category)
    when 211..262
      redirect_to activity_path(Activity.all.sample)
    when 263..330
      category = Category.find_by_title('chill')
      redirect_to category_path(category)
    when 331..359
      category = Category.find_by_title('food')
      redirect_to category_path(category)
    end
  end

  # def home
  #   forecast = JSON.parse(open("https://api.darksky.net/forecast/fb6e29ca175e8558227b0cc4d2ea70f0/51.5074,0.1278").read)
  #   days_array = forecast['daily']['data']
  #   @today = days_array[0]
  # end
end
