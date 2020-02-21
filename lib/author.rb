require_relative 'post'

class Author

    attr_accessor :name
    attr_reader :posts

    @@all = []

    def initialize(name)
        @name = name
        @posts = []
        save_to_all
    end

    def add_post(post_instance)
        post_instance.author = self
    end

    def add_post_by_title(post_title)
        new_post = Post.new(post_title)
        add_post(new_post)
    end

    def self.post_count
        self.all.sum {|author_instance| author_instance.posts.length }
    end

    def self.all
        @@all
    end

    def save_to_all
        self.class.all << self
    end
end
