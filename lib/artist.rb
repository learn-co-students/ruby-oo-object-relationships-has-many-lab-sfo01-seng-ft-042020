require 'pry'

class Artist

    attr_accessor :name
    
    def initialize(name)
        @name = name
    end

    def songs
        Song.all #calls the class Song
    end

    def add_song(song)
        song.artist = self #refers to artist instance
        # binding.pry
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name) # creates new object with song_name passed it
        add_song(song) #calls method to add artist to song
    end


    def self.song_count
        # binding.pry
        Song.all.count
    end

end
