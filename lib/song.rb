require 'pry'

class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name=(name)
   if (self.artist.nil?)
     self.artist = Artist.new(name)
   else
     self.artist.name = name
   end
 end

 def self.new_by_filename(filename)
    new_song = filename.split(" - ")
    artist = new_song[0]
    binding.pry
    song = self.new
  end
end
