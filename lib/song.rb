class Song
    attr_accessor :artist, :title, :name
    @@all = []
    def initialize(name)
        @name = name
        save
    end 

    def save
        @@all << self
    end 
    def artist_name
       if self.artist == nil
        nil 
       else 
        self.artist.name
       end 
    end 
    def self.all
        @@all
    end
end 