class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.count
    @@count
  end

  def self.genre_count
    genre_hash = Hash.new
    @@genres.each { |genre|
      genre_hash[genre] ? genre_hash[genre] += 1 : genre_hash[genre] = 1
    }
    genre_hash
  end

  def self.artist_count
    artist_hash = Hash.new
    @@artists.each { |artist|
    artist_hash[artist] ? artist_hash[artist] += 1 : artist_hash[artist] = 1
    }
    artist_hash
  end
end