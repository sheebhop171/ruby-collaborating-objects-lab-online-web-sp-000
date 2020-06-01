require 'pry'

class Artist

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    @@all.find {|artist| artist.name == name}
    #binding.pry
    if self.name == name
      Artist
    else
      Artist.new(name)
    end
  end

  def print_songs
    puts artist.songs
  end
end
