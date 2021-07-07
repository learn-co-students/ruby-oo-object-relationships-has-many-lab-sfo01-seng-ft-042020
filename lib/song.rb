class Song
    @@all = []
    attr_accessor :artist, :name
    # attr_reader :artist
    def initialize(name, artist=nil)
        #@title = title
        @artist = artist
        @name = name
        save
    end

    def self.all
        @@all
    end

    def artist_name
        if artist == nil
            nil
        else
            artist.name
        end
    end
    
    private
    def save
        @@all << self
    end

end