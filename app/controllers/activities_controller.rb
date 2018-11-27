class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!
  def show
    @activity = Activity.find(params[:id])
    @event = Event.new
    @markers =
      [{
        lng: @activity.longitude,
        lat: @activity.latitude
      }]
    if @coordinates.all?
      @distance = @activity.distance_from(@coordinates, units: :kms)
      @direction = @activity.heading_to(@coordinates)
      raise
    end
  end
end
