require 'pry'

class Artist
  attr_accessor :name, :songs, :song_count

  @@song_count = 0 #double @@ makes this a class variable, this counter is set to 0

  def initialize(name)
    @name = name
    @songs = []
    #@@song_count += 1 #add one to song_count class variable each time a song is created
  end

  def add_song(song)
    #@songs << song #add each song to the songs array, created in initialize
    songs << song #add each song to the songs array, created in initialize
    #####should above be @songs or simply songs?????
    #####on learn, they have @songs, but in class i thought we were told differently.

    song.artist = self #relate each song to it's artist, via the .artist method in the Song class
    #why have #add_song(song) method? won't all songs have song names? method below seems better.
    @@song_count += 1 ####why does this go here, and not in initialize(name)??

  end

  def add_song_by_name(song_name)   #takes in an argument of a song name,
    song_name = Song.new(song_name) #creates a new song with it
    #songs << song_name
    #song_name.artist = self
    add_song(song_name)             #and associates the song and artist (via add_song method)
  end

  # #a class method that returns the total number
  # #of songs associated to all existing artists
  def self.song_count #self before song_count makes this a class method
    @@song_count
  end

end #end class
