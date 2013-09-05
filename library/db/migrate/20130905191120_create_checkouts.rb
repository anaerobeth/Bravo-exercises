class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.string :reader
      t.datetime :date
      t.integer :book_id

      t.timestamps
    end
  end
end
