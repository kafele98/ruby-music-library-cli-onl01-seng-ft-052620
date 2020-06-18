class Song 
  attr_accessor :name, :artist, :genre, :musicimporter, :musiclibrarycontroller
  extend Concerns::Findable 
  
  @@all = []
  def initialize(name, artist=nil, genre=nil)
    @name = name 
    self.artist=(artist) if artist != nil
    self.genre=(genre) if genre != nil 
  end 
  
  def name 
    @name 
  end 
  
  def name=(song_name)
    @name=song_name
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.destroy_all
    @@all.clear
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.create(song)
    song = self.new(song)
    song.save 
    song 
  end 
  
  def artist 
    @artist 
  end 
  
  
end 


