require_relative './author.rb'
require_relative './magazine.rb'

class Article

    attr_accessor :author, :magazine, :title

    @all = []

    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @all << []
    end

    def article_title
        @title
    end

    def all_articles
        @all
    end

end
