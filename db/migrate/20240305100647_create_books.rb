class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :title
      t.text :summary
      t.string :author
      t.string :genre
      t.string :publisher
      t.date :publishing_date
      t.string :ISBN
      t.float :ratings

      t.timestamps
    end
  end
end
