class FollowersController < ApplicationController
  def index
    @followers = Follower.where(user: current_user)
    @followings = Follower.where(follower_id: current_user)
  end

  def create
    @follower = Follower.new(user_id: params[:user_id], follower_id: current_user.id)
    @user = User.find(@follower.user.id)
    if @follower.save!
      respond_to do |format|
        format.html { redirect_to user_path(@follower.user_id) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'users/show' }
        format.js
      end
    end
  end

  def destroy
    @follower = Follower.find(params[:id])
    @user = @follower.user
    @follower.delete
    respond_to do |format|
      format.html { redirect_to user_path(@user) }
      format.js
    end
  end
end
