class EventsController < ApplicationController

  before_action :find_event, only: [:show, :update, :edit, :destroy]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
    @activity = Activity.find(params[:id])
  end

  def create
    @event = Event.new(event_params)
    @event.activity = Activity.find(params[:event_id])
    @event.user = current_user
    if event.save
      redirect_to event_path(@event.activity)
    else
      render :new
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
