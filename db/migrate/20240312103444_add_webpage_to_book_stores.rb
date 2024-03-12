class AddWebpageToBookStores < ActiveRecord::Migration[7.1]
  def change
    add_column :book_stores, :webpage, :string
  end
end
