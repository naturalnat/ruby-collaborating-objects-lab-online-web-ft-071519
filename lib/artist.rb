class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def songs
    Song.find_by_artist(self)
  end

  def add_song(song)
    song = artist.self
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name}
  end

end
