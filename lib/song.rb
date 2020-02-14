
class Song 
  @@count = 0
  
  def self.count 
    @@count
  end 
  

  @@genres = []
  

  def self.genres
    @@genres.uniq
  end
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1 
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end
  
  @@artists = []
  
  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] = +1 
      else
        artist_count = 1 
      end
    end
    
  def self.artists
    @@artists.uniq
  end
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end
  attr_accessor :name, :artist, :genre
end
