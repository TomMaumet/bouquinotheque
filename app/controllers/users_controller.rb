class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @new_friend = FriendRelationship.new

    @friend_relationships = FriendRelationship.where(user: @user)
  end
end
