class AddInfosToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :nickname, :string
    add_column :users, :avatar, :string
    add_column :users, :age, :integer
    add_column :users, :city, :string
  end
end
