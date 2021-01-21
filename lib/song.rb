require 'pry'
class Song

     attr_accessor :name, :artist, :genre
     @@count = 0
     @@genres = []
     @@artists = []
     
     def initialize(name, artist, genre)
        self.name = name
        self.artist = artist
        @@artists << artist
        self.genre = genre
        @@genres << genre
        @@count += 1
     end

     def self.count
        @@count
     end

     def self.genres
        @@genres.uniq
     end

     def self.artists
        @@artists.uniq
     end

     def self.genre_count
        genre_count ||= {}
        counter = 0
        @@genres.each do |genre|
            if genre_count.keys.include?(genre)
                counter += 1
                genre_count[genre] = counter
            else
                counter = 1
                genre_count[genre] = counter
            end
        end
        genre_count
    end

    def self.artist_count
        artist_count ||= {}
        counter = 0
        @@artists.each do |artist|
            if artist_count.keys.include?(artist)
                counter += 1
                artist_count[artist] = counter
            else
                counter = 1
                artist_count[artist] = counter
            end
        end
        artist_count
    end
end
        

