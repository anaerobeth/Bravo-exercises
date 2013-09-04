class AddTempo < ActiveRecord::Migration
  def up
    add_column :songs, :tempo, :integer, :default => 90
  end

  def down
    remove_column :songs, :tempo
  end
end
