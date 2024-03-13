class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @new_friend = FriendRelationship.new

    @friends = @user.friends
  end
end
