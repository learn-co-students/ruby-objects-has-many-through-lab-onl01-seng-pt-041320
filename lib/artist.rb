class Artist
attr_accessor :name, :genre

@@all = []

def initialize(name)
  @name=name
  @@all << self
end

def self.all
  @@all
end

def songs
Song.all.select {|song| song.artist == self}
end

def genres
self.songs.map {|song| song.genre}
end

def new_song(new,genre)
  Song.new(name,self,genre)
end

end
