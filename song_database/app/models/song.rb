class Song < ActiveRecord::Base
  default_scope order(:title)
  class << self

    def get_song
      Song.find(:all, :limit => 2)
    end

    def display_title_and_artist
      two_songs = get_song
      two_songs.each do |song|
        puts "Title: #{song.title}"
        puts "Artist: #{song.artist}"
      end
    end
  end
end

