class CommentsController < ApplicationController
  def index
    @event = Event.find(params[:event_id].to_i)
    @comments = @event.comments
    @comment = Comment.new
  end

  def create
    @event = Event.find(params[:event_id].to_i)
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.event = @event
    if @comment.save!
      respond_to do |format|
        format.html { redirect_to event_comments_path(@event) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'index' }
        format.js
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @event = @comment.event
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to event_comments_path(@event) }
      format.js
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
