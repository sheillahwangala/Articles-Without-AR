require_relative './article.rb'

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