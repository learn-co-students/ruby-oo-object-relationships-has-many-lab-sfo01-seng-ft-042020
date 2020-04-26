require 'pry'
class Artist
    attr_accessor :name, :songs
    @@song_count = 0
    
    def initialize(name)
        @name = name
        @song = []
    end
    def self.song_count 
        @@song_count +=1
    end 
    def add_song(songs)
        songs.artist = self 
        @song << songs
        @@song_count += 1
    end 
    def songs
        Song.all.select {|song| song.artist == self}
    end
    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
        @song << song
        @@song_count += 1
    end
end 
#binding.pry
#0