class Artist

  attr_accessor :name, :genre

  @@all = []

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
  end

  def genres
    Songs.all.map do |song|
      song.genre
  end
end
