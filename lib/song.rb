class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
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
        rapc = 0
        popc = 0
        @@genres.each do |hi|
            if hi == "rap"
                rapc += 1
            else hi == "pop"
                popc += 1
            end
        end
        hash = {"pop" => popc, "rap" => rapc}
        hash
    end

    def self.artist_count
        bsc = 0
        jzc = 0
        @@artists.each do |a|
            if a == "Brittany Spears"
                bsc += 1
            else a == "Jay-z"
                jzc += 1
            end
        end
        hash = {"Brittany Spears" => bsc, "Jay-Z" => jzc}
        hash
    end

end