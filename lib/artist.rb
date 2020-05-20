require 'pry'

class Artist

    attr_accessor :name, :genre

    @@all = []

    def initialize(name)
        @name = name
        @@all.push(self)
    end

    def self.all
        @@all
    end

   
    def songs
        #binding.pry
        Song.all.select { |song| song.artist == self}
    end


    def genres
        self.songs.map { |song| song.genre }
    end



    def new_song(name, genre)
        #binding.pry
       Song.new(name, self, genre)
    end

end