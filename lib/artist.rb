require 'pry'

class Artist
    attr_accessor :name, :songs
    attr_reader 
    #@@songs = []
    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song_by_name(song_name)
      song = Song.new(song_name, self)
      self.songs << song
    end

    def add_song(song)
        song.artist = self
        @songs << song
    end

    def songs
        Song.all.select do |song|
            self == song.artist
        end
    end

    def self.song_count
        Song.all.select do |song|
            song.artist != nil
        end.count
    end
end