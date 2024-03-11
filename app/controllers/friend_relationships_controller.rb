class FriendRelationshipsController < ApplicationController
  def create
    @new_friend = FriendRelationship.new(friend_relationships_params)
    @new_friend.save
  end

  def destroy
    @friend_relationship = FriendRelationship.find(params[:id])
    @friend_relationship.destroy
  end

  def friend_relationships_params
    params.require(:friend_relationship).permit(:user_id, :friend_id)
  end
end
