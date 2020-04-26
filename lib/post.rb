require 'pry'
class Post
@@all = []
attr_accessor :author, :title
    def initialize(title, author=nil)
        @author = author
        @title = title
        save
    end


    def author_name
        if author == nil
            nil
        else 
            author.name
        end
    end

    def self.all
        @@all
    end

    private
    def save
        @@all << self      
    end
 
end