require 'pry'
class Author
attr_accessor :name

    def initialize(name)
        @name = name
        @posts = []

    end

    def posts
        Post.all.select do |post|
            post.author == self
        end
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(post_title)
        post = Post.new(post_title, self)
        self.posts << post
    end

    def self.post_count
        Post.all.select do |post|
            post.author != nil
        end.count
    end

end