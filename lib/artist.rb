require 'pry'

require_relative './song.rb'
require_relative './genre.rb'

class Artist
    attr_accessor :name, :genre

    @@all = []

    def initialize(name)
        @name = name
        @genre = genre
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select { |song| song.artist == self }
    end

    def genres
        songs.map { |song| song.genre }
    end

    def new_song(name, genre)
        song = Song.new(name, self, genre)
    end
end
