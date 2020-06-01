require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{path}/*.mp3").collect {|file| file.gsub("#{path}/", "")}
  end

  def import(list_of_filenames)
    files.each{|filename| Song.new_by_filename(filename)}
  end
end
