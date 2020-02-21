class Post

    attr_reader :title, :author

    @@all = []

    def initialize(title)
        @title = title
        save_to_all
    end

    def author=(author_instance)
        @author = author_instance
        author_instance.posts << self
    end

    def author_name
        if author
            author.name
        end
    end

    def self.all
        @@all
    end

    def save_to_all
        self.class.all << self
    end

end
