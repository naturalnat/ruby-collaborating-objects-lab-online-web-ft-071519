class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def self.find_by_artist(artist)
    Song.all.select { |song| song.artist == artist }
    end

  def artist_name=(name)
   if (self.artist.nil?)
     self.artist = Artist.new(name)
   else
     self.artist.name = name
   end
 end

end
