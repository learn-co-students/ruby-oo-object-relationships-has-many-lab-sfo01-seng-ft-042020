class Post
attr_accessor :title 
attr_reader :author

    @@all = []

def initialize(title)
    @title = title
    @author = nil
    @@all << self 
end 

def author=(author_obj)
    @author = author_obj
    author_obj.posts << self 
end 

def self.all
    @@all
end 

def author_name
    if self.author
        self.author.name 
    else 
        nil
    end 
end 




end 