require 'pry'
class Song 
    attr_accessor :artist, :name, :genre  
# Created empty array to tracks all the songs.
    @@all = [] 
# Each song instance initialized with a name, artist, and genre save in array.
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self 
    end
# Knows about all the songs instances created.
    def self.all
        @@all
    end
end