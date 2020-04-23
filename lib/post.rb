require 'pry'

class Post

    attr_accessor :author, :name, :title

    @@all = [ ]

    def initialize(title)
        @title = title
        @@all << self 
    end

    def self.all
        @@all
    end

 def author_name
    # binding.pry.
    if self.author
       p self.author.name
    else
        nil
    end
 end



end