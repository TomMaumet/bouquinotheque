class ChangeBookTypeTypeInBook < ActiveRecord::Migration[7.1]
  def change
    change_column :books, :book_type, :string
  end
end
