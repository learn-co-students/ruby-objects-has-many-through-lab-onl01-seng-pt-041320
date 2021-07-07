require 'pry'
class Artist
    attr_accessor :name
# Created an empty array to store all the artist instance created.
    @@all = []
# Aritist instance initialized with a name and save the instance to all array.
    def initialize(name)
        @name = name 
        @@all << self
    end
# Knows about all the artist instances.
    def self.all 
        @@all
    end
# Given the name and genre create a new song associated with the artist.
    def new_song(name, genre)
        Song.new(name, self, genre)
    end
# Return all the songs associated with thi Artist.
    def songs
        Song.all.select {|song| song.artist == self}
    end
# Has many genres through songs.
    def genres
        songs.map {|song| song.genre }
    end
end