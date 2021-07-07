require 'pry'
class Author 
    attr_accessor :name
    @@post_count = 0

    def initialize(name)
        @name = name
        @post = []
    end 
    def self.post_count 
        @@post_count += 1
    end 
    def add_post(posts)
        posts.author = self 
        @post << posts 
        @@post_count += 1
    end 
    def posts 
        Post.all.select {|post| post.author == self}
    end 
    def add_post_by_title(post_title)
        post = Post.new(post_title)
        @post << post
        post.author = self 
        @@post_count += 1
    end
end 