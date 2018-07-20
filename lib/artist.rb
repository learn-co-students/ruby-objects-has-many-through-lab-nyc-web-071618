require "pry"

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
    @songs << song
    return song
  end

  def songs
    @songs
  end

  def genres
    genres = @songs.map do |song|
      song.genre
    end
    #binding.pry
  end

end
