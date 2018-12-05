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

  def feed
    following = Follower.where(follower_id: current_user.id)
    users = []
    following.each do |follow|
      users << User.find(follow.user_id)
    end
    @events = []
    users.each do |user|
      @events << user.events
    end
    @events = @events.flatten.sort_by(&:created_at).reverse
  end

  def profile
    @events = current_user.events
  end

  def search
    if params[:name]&.empty?
      @users = User.all.reject { |user| user.id == current_user.id }.sort_by { |user| user.first_name.downcase }
    elsif params[:name]
      @users = User.search_by_firstname_and_lastname(params[:name]).reject { |user| user.id == current_user.id }.sort_by { |user| user.first_name.downcase }
    else
      @users = User.all.reject { |user| user.id == current_user.id }.sort_by { |user| user.first_name.downcase }
    end
  end

  def notifications
    @notifications = Hosting.where(user_id: current_user.id, status: 'pending')
  end
end
