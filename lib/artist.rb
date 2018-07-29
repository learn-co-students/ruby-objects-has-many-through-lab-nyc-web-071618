require 'pry'
require_relative './song'
require_relative './genre'

class Artist

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |song_object|
      song_object.artist == self
    end
  end

  def genres
    Song.all.map do |song_object|
      if song_object.artist == self
        song_object.genre
      end
    end
  end

end
