class AddRatingToBooks < ActiveRecord::Migration
  def self.up
    add_column :books, :rating, :integer
  end
  def self.down
    remove_column :books, :rating
  end
end
