require 'pry'
class Genre
    attr_accessor :name
# Created empty array for the genres instances.
    @@all = []
# Genre should be initialized with a name and stored in all array.
    def initialize(name)
        @name = name 
        @@all << self
    end
# Knows about all the genres instances created.
    def self.all
        @@all
    end
# Has many songs instances.
    def songs
        Song.all.select {|song| song.genre == self}
    end
# Has many artist though songs
    def artists
        songs.map {|song| song.artist}
    end 
end