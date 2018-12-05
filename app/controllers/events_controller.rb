class EventsController < ApplicationController
  before_action :find_event, only: [:show, :update, :edit, :destroy]

  def index
    @events = current_user.events
    @hostings = Hosting.where(user: current_user.id, status: 'approved')
    @all_events = []
    @hostings.each do |hosting|
      @all_events << Event.find(hosting.event_id)
    end
    @all_events = @all_events + @events
    # @all_events = @all_events.reject { |event| event.date < Time.now }
    @all_events.sort_by { |event| event.date }
  end

  def new
    @event = Event.new
  end

  def show
    @activity = @event.activity
    @hosting = Hosting.new
    if params[:name]
      followers = current_user.followers
      following = Follower.where(follower_id: current_user.id)
      followers_array = []
      followers.each do |follower|
        followers_array << User.find(follower.follower_id)
      end
      following.each do |user|
        followers_array << User.find(user.user_id)
      end
      followers_array = followers_array.uniq
      search_results = User.search_by_firstname_and_lastname(params[:name])
      followers_array = followers_array.reject { |follower| Hosting.find_by(user: follower.id, event: @event) }
      @followers_array = followers_array & search_results
      @followers_array = @followers_array.sort_by { |user| user.first_name.downcase }
    else
      followers = current_user.followers
      following = Follower.where(follower_id: current_user.id)
      @followers_array = []
      followers.each do |follower|
        @followers_array << User.find(follower.follower_id)
      end
      following.each do |user|
        @followers_array << User.find(user.user_id)
      end
      @followers_array = @followers_array.uniq
      @followers_array = @followers_array.reject { |follower| Hosting.find_by(user: follower.id, event: @event) }.sort_by { |user| user.first_name.downcase }
    end
    guests = Hosting.where(event: @event, status: 'approved')
    @event_guests = []
    guests.each do |guest|
      @event_guests << User.find(guest.user.id)
    end
    pendings = Hosting.where(event: @event, status: 'pending')
    @pending_guests = []
    pendings.each do |pending|
      @pending_guests << User.find(pending.user.id)
    end
    @event_guests = @event_guests.sort_by { |user| user.first_name.downcase }
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @event = Event.new(event_params)
    @event.activity = Activity.find(params[:activity_id])
    @event.user = current_user
    if @event.title.empty?
      @event.title = @event.activity.title
    end
    if @event.description.empty?
      @event.description = @event.activity.description
    end
    if @event.date.nil?
      @event.date = Time.now
    end
    if @event.save!
      redirect_to event_path(@event)
    else
      render "events/new"
    end
  end

  def update
    @event.update(event_params)
    if event.save
      redirect_to event_path
    else
      render :edit
    end
  end

  def edit
  end

  def destroy
    @event.destroy
    redirect_to events_path
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :date, :guests)
  end

  def find_event
    @event = Event.find(params[:id])
  end
end
