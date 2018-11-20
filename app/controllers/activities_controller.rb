class ActivitiesController < ApplicationController

  def show
    @activity = Activity.find(params[:id])
    @event = Event.new
  end
end
