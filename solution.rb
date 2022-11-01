# Please copy/paste all three classes into this file to submit your solution!
class Author
  attr_accessor :name

  def initialize(name)
    @name = name
  
  end

  def articles
    Article.all.select{|article| article.author.name == self.name}
  end

  def magazines
    all_magazines = articles.map{ |article| article.magazine}
    all_magazines.uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def add_topic
    magazines.collect{|magazine| magazine.category}.uniq
  end

end


class Article

    attr_accessor :author, :magazine, :title

    @@all = []

    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

end


class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  # helper function
  def mag_aticles
    Article.all.select{|article| article.magazine.name == self.name}
  end

  # to return an array of author instances for a magazine
  def contributors
    mag_articles.collect{|article| article.author}.uniq
  end

  # to return first magazine object that matches given a string of magazine's names
  def self.find_by_name(name)
    magazine_found = self.all.select { |magazine| magazine.name == name}
    magazines_found.first
  end

  # to return an array of string titles of all articles for a magazine
  def article_titles
    mag_articles.collect{|article| article.title}
    
  end

  # to return an array of authors that have written more than 2 articles for the magazine
  def contributing_authors
    magazine_authors = mag_articles.collect{|article| article.author.name}
    magazine_authors.tally.each {|key, value|  value > 2}
    magazine_authors
  end


end


