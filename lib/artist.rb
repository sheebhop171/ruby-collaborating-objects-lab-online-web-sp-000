require 'pry'

class Artist

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.find_or_create_by_name(name)
    binding.pru
    if (self.name == name)
      self
    else
      Artist.new(name)
    end
  end

  def print_songs
    puts self.songs
  end
end
