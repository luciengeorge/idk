class FollowersController < ApplicationController
  def index
  end

  def create
    @follower = Follower.new(user_id: params[:user_id], follower_id: current_user.id)
    if @follower.save!
      redirect_to user_path(@follower.user_id)
    else
      render 'users/show'
    end
  end

  def destroy
    @follower = Follower.find(params[:id])
    @user = @follower.user
    @follower.delete
    redirect_to user_path(@user)
  end
end
