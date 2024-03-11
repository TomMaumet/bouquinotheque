class AddScoresToBooks < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :thriller_score, :integer
    add_column :books, :romance_score, :integer
    add_column :books, :aventure_score, :integer
    add_column :books, :jeunesse_score, :integer
  end
end
