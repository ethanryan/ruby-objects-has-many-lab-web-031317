class Song

  #@@song_count = 0 #double @@ makes this a class variable, this counter is set to 0

  attr_accessor :name, :artist

  def initialize(name)
    #binding.pry
    @name = name
    @artist = artist
    #@@song_count += 1 #add one to song_count variable every time a song is created

  end

  def artist_name
    #if_this_is_a_true_value ? then_the_result_is_this : else_it_is_this
    artist == nil ? nil : self.artist.name
  end

    # if artist
    #   self.artist.name
    # else
    #   nil
    # end #if else

    #a class method that returns the total number
    #of songs associated to all existing artists
    # def self.song_count #self before song_count makes this a class method
    #   @@song_count
    # end

end
