class LikesController < ApplicationController
  def create
    like = Like.new(user: current_user, event: params[:event_id])
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

  def destroy
    @like = Like.find(params[:id])
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
