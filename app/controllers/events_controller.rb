class EventsController < ApplicationController
  before_action :find_event, only: [:show, :update, :edit, :destroy]

  def index
    @events = current_user.events
  end

  def new
    @event = Event.new
  end

  def show
    @activity = @event.activity
  end

  def create
    @event = Event.new(event_params)
    @event.activity = Activity.find(params[:activity_id])
    hosting = Hosting.new(user: current_user, event: @event)
    if @event.save && hosting.save
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
    redirect_to event_path
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :date, :guests)
  end

  def find_event
    @event = Event.find(params[:id])
  end
end
