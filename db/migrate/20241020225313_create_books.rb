class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :name
      t.text :description
      t.string :author
      t.string :genre
      t.string :publisher
      t.float :price
      t.integer :quantity

      t.timestamps
    end
  end
end
