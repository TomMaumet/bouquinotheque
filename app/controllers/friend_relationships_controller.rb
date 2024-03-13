class FriendRelationshipsController < ApplicationController
  def create
    @new_friend = FriendRelationship.new(friend_relationships_params)
    @new_friend.save
    @user = User.find(params[:user_id])
    redirect to user_path(@user)
  end

  def destroy
    @friend_relationship = FriendRelationship.find(params[:id])
    @friend_relationship.destroy
  end

  def friend_relationships_params
    params.require(:friend_relationship).permit(:user_id, :friend_id)
  end
end
