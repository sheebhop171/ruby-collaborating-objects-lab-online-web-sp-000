require 'pry'

class Artist

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.find_or_create_by_name(name)
    all.find {|artist| artist.name == name} || Artist.new(name)
  end

  def self.create(name)
    self.new(name).tap(&:save)
  end

  def save
    @@all << self
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end
end
