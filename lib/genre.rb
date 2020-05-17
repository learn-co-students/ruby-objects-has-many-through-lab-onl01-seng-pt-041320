class Genre
     
   
    attr_accessor :name, :song, :artist

    @@all = []

    def initialize(name)
        @name = name
        @artist = artist
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|s| s.genre == self}
    end

    def artists
        Song.all.map {|s| s.artist}
    end
end