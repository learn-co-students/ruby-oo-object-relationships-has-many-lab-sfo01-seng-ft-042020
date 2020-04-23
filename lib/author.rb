require 'pry'
class Author
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def posts
        Post.all
    end

    def add_post(post) #post = hello world // self = betty
    #    binding.pry
        post.author = self

    end


    def add_post_by_title(post)
        # binding.pry
        new_post = Post.new(post)
        add_post(new_post)
        

    end

    def self.post_count
        Post.all.count
    end

end