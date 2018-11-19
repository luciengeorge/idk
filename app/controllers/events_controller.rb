class EventsController < ApplicationController

  before_action :find_event, only: [:show, :update, :edit, :destroy]

  def index
    @events = Event.all
  end

  def show
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
