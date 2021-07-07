require 'pry'

class Artist

    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self unless @@all.include?(self)
    end

    def self.all
        @@all
    end

    def new_song(name, genre) # Passes in object Genre
        song = Song.new(name, self, genre) # creates a song with (name, artist, genre) # this also adds it to Song.all
        self.songs.last
        # binding.pry
    end

    # iterates thru and selects songs that belong to self (artist)
    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    # iterates over artist's songs and collects the genre of each song, uniq
    def genres
        Song.all.map do |song|
            song.genre
        end
    end


end