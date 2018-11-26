class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    redirect_to profile_path if current_user == @user
  end
end
