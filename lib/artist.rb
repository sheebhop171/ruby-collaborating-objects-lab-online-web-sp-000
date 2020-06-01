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
    self.all.find {|artist| artist.name == name} || self.create(name)
  end

  def print_songs
    @songs.each do |x|
     puts x.name
  end
end
