class Genre
    attr_accessor :name, :genre
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select do |songs|
            songs.genre == self
        end
    end

    def self.all
        @@all
    end

    def artists
        Song.all.map do|songs|
            songs.artist
        end
    end
end