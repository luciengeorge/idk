class WishesController < ApplicationController

  def index
    @wish = Wish.where(user: current_user)
    # @event = Event.all
  end

  def create
    Wish.create(user: current_user, activity: Activity.find(params[:activity_id]))
    redirect_to category_path(Activity.find(params[:activity_id]).category)
  end

  def destroy
    @wish = Wish.find(params[:id])
    @wish.delete
    redirect_to wishes_path
  end
end
