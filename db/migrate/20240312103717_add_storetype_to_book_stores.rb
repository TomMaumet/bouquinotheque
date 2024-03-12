class AddStoretypeToBookStores < ActiveRecord::Migration[7.1]
  def change
    add_column :book_stores, :store_type, :string
  end
end
