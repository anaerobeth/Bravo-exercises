class Song
  class << self

    def get_song
      Song.find(:all, :limit => 2)
    end
  end
end
