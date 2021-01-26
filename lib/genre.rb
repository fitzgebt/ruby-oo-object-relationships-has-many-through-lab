require 'pry'

class Genre 
    attr_accessor :artist, :song, :name
    attr_writer
    attr_reader

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.genre == self}
    end

    def artists
        songs.map {|song| song.artist}
    end


end

