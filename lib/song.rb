class Song
  attr_accessor :name
  attr_reader :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self) unless artist.songs.include?(self)
  end
  
  def artist_name
    @artist.name unless @artist == nil
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
end