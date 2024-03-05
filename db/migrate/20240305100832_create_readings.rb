class CreateReadings < ActiveRecord::Migration[7.1]
  def change
    create_table :readings do |t|
      t.references :book, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.text :comment
      t.integer :my_rating
      t.string :reading_status, default: "unread"
      t.string :shared_to

      t.timestamps
    end
  end
end
