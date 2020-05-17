require 'pry'

class Artist

    @@all = []

    attr_accessor :name

   def initialize(name)
       @name = name
       @@all << self
   end

   def self.all
       @@all
   end
   
   def songs
        Song.all.select {|s| s.artist == self}
   end

   def new_song(name, genre)
        new_song = Song.new(name, self, genre)
   end

   def genres
        Song.all.map{|s| s.genre}
   end
   
   
   
   
   
    # def initialize(name)
    #     @name = name 
    #     @genre = genre
    #     @@all << self
    # end

    # def self.all
    #     @@all
    # end

    # def songs
    #     Song.all.select {|s| s.artist == self}
    # end

    # def new_song(song, genre)
    #     new_song = Song.new(name, self, genre)
    #     # binding.pry
    # end

end