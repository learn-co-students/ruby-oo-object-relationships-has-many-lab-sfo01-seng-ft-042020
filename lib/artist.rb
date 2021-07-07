require 'pry'
require_relative 'song.rb'
class Artist
  attr_accessor :name 
  
  @@all = []
  

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
  end

  def self.song_count
    Song.all.count
  end
end

# adele = Artist.new("Adele")
# binding.pry
# hello = Song.new("Hello")
# hello.artist = adele