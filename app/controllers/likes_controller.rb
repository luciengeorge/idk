class LikesController < ApplicationController
  def create
    like = Like.new(user: current_user, event: Event.find(params[:event_id].to_i))
    if like.save!
      respond_to do |format|
        format.html { redirect_to events_path }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'events/index' }
        format.js
      end
    end
  end

  def destroy
    @like = Like.find(params[:id])
    @event = @like.event
    if @like.delete
      respond_to do |format|
        format.html { redirect_to events_path }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'events/index' }
        format.js
      end
    end
  end
end
