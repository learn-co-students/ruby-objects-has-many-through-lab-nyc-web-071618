require 'pry'
require_relative './artist'
require_relative './song'

class Genre

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all = []
  end

  def self.all
    @all
  end

  def songs
    Song.all.select do |song_object|
      song_object.genre == self
    end
  end

  def artists
    Song.all.map do |song_object|
      if song_object.genre == self
        song_object.artist
      end
    end
  end

end #end of Genre class
