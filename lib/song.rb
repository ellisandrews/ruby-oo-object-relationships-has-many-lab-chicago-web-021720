class Song

    attr_reader :artist, :name

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def artist=(artist_instance)
        @artist = artist_instance  # Associate the Artist with THIS Song
        artist_instance.songs << self  # Add THIS Song to the Artist
    end

    def artist_name
        if self.artist
            self.artist.name
        end
    end

    def self.all
        @@all
    end

    def save
        Song.all << self
    end
end
