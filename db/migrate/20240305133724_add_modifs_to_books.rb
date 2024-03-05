class AddModifsToBooks < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :publishing_year, :integer
    remove_column :books, :publishing_date
    add_column :books, :EAN, :string
    add_column :books, :type, :string
    remove_column :books, :ISBN
  end
end
