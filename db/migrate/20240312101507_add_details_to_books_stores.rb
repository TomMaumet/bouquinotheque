class AddDetailsToBooksStores < ActiveRecord::Migration[7.1]
  def change
    add_column :book_stores, :details, :string
  end
end
