require 'pry'

class Song

    attr_accessor :artist, :name

    @@all = [ ]

    def initialize(name)
        @name = name
        @@all << self #refers to each instance in the song
    end

    def self.all
        @@all
    end

    def artist_name #self = 
        # binding.pry
        if self.artist
           p self.artist.name
        else
            nil
        end
    end

end