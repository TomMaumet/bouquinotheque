class AddPhoneNumberToBookStores < ActiveRecord::Migration[7.1]
  def change
    add_column :book_stores, :phone_number, :string
  end
end
