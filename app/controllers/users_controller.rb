class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @events = @user.events
    redirect_to profile_path if current_user == @user
  end
end
