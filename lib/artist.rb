require 'pry'

class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    songs << song
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.find_or_create_by_name(name)
    artist = all.find {|artist| artist.name == name}
    #binding.pry
    if artist #!= nil
      artist
    else
      Artist.new(name)
    end
  end

  def print_songs
    puts artist.songs
  end
end
