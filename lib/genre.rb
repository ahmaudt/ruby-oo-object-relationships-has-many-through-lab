require 'pry'

require_relative './song.rb'
require_relative './artist.rb'

class Genre
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select { |song| song.genre == self }
    end

    def artists
        songs.map { |song| song.artist } #! we use the #songs method because it returns only those songs with the corresponding artists
    end
end