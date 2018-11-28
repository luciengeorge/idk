class HostingsController < ApplicationController
  def new
    @hosting = Hosting.new
    if params[:name]&.empty?
      @users = current_user.followers
    elsif params[:name]
      @users = User.search_by_firstname_and_lastname(params[:name])
    else
      @users = current_user.followers
    end
    # respond_to do |format|
    #   format.js
    # end
  end

  def create
    @hosting = Hosting.new
    @user_ids = params[:hosting][:user_id]
    @event = Event.find(params[:event_id])
    @user_ids = @user_ids.reject { |id| id.empty? }
    @user_ids.each do |user|
      @user = User.find(user)
      Hosting.create!(user: @user, event: @event)
      @event.update(guests: (@event.guests + 1))
    end
    redirect_to event_path(Event.find(params[:event_id].to_i))
  end
end
