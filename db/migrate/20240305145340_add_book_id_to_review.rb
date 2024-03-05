class AddBookIdToReview < ActiveRecord::Migration[7.1]
  def change
    add_reference :reviews, :book, null: false, foreign_key: true
    remove_column :reviews, :reading_id
  end
end
