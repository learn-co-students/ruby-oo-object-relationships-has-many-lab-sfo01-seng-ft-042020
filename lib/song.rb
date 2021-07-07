class Song
attr_accessor :name
attr_reader :artist
@@all = []

def initialize(name)
    @name = name
    @artist = nil 
    @@all << self 
    
end 

def artist=(artist_obj)
    @artist = artist_obj
    artist_obj.songs << self 
end 

def self.all
    @@all
end 

def artist_name
    if self.artist 
        self.artist.name
        else 
            nil
        end 
    
end 
        
end 