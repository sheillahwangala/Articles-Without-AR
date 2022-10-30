require_relative './author.rb'
require_relative './magazine.rb'

class Article

    attr_accessor :author, :magazine, :title

    @@all = []

    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end

    def title
        @title
    end

    def author
        @author
    end

    def magazine
        @magazine
    end


    def self.all
        @@all
    end

end
