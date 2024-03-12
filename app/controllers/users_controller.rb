class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @new_friend = FriendRelationship.new

    @friends = @user.friends
  end
end
