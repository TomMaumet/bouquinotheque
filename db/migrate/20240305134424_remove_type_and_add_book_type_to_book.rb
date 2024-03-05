class RemoveTypeAndAddBookTypeToBook < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :book_type, :integer
    remove_column :books, :type
  end
end
