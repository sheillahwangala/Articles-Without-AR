require_relative './article.rb'

class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def name
    @name
  end

  def category
    @category
  end

  def self.all
    @@all
  end

  # to return an array of author instances for a magazine
  def contributors
    Article.all.collect do |article_instance|
      if article_instance.magazine.name == self.name
        article_instance.author
      end
    end

  end

  # to return first magazine object that matches given a string of magazine's names
  def self.find_by_name(name)
    self.all.find do |something|
      something.name == name
    end
  end

  # to return an array of string titles of all articles for a magazine
  def article_title
    Article.all.select do |article|
      if article.magazine.name == self.name
        article.title
      end
    end

  end

  # to return an array of authors that have written more than 2 articles for the magazine
  def contributing_authors
    self.contributors.filter do |author|
      author.articles.length > 2
    end

  end



end


