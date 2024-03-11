class AddFriendToFriendRelationship < ActiveRecord::Migration[7.1]
  def change
    add_reference :friend_relationships, :friend, foreign_key: { to_table: :users }
  end
end
