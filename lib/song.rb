class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@artist_count = {}
    @@genres = []
    @@genre_count = {}
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
        if @@genre_count[genre]
            @@genre_count[genre] += 1
        else
            @@genre_count[genre] = 1
        end
        if @@artist_count[artist]
            @@artist_count[artist] += 1
        else
            @@artist_count[artist] = 1
        end
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
    def self.genre_count
        @@genre_count
    end
    def self.artist_count
        @@artist_count
    end
end