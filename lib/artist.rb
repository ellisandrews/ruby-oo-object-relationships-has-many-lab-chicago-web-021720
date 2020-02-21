require_relative 'song'


class Artist

    attr_accessor :name, :songs

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        save
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song_name)
        add_song(Song.new(song_name))
    end

    def self.all
        @@all
    end

    def save
        Artist.all << self
    end

    def self.song_count
        self.all.sum { |artist_instance| artist_instance.songs.length }
    end

end
