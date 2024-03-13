class AddScoresToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :thriller_score, :integer
    add_column :users, :romance_score, :integer
    add_column :users, :aventure_score, :integer
    add_column :users, :jeunesse_score, :integer
  end
end
