class Genre
  attr_accessor :name, :song, :artist
  @@all = []
  def initialize(name)
    @name = name
    @song = song
    @@all << self
end

def self.all
    @@all
end

def new_song(name, artist)
    Song.new(name, self, artist)
end
def songs
    Song.all.select {|song| song.genre == self}
end
def artists
    songs.map do |song| 
     song.artist
    end
end

end