class Genre
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select do |song_genre|
      song_genre.genre == self
    end
  end

  def artists
    self.songs.map do |song|
      song.artist
    end
  end

end #end genre class
