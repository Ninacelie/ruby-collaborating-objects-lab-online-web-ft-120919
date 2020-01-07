class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(file_name)
    self.name = file_name.split(" - ")[0]
    self.artist.name = file_name.split(" - ")[1]
  end

    # song_name = file.split(" - ")[1]
    # artist_name = file.split(" - ")[0]
    # song = Song.new(song_name)
    # song.artist_name = artist_name
    # song
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
    artist.add_song(self)
      # self.artist = Artist.find_or_create_by_name(name)
      # self.artist.add_song(self)
  end
end
