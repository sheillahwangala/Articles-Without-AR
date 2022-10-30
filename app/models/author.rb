require_relative './article.rb'

class Author
  attr_accessor :name

  def initialize(name)
    @name = name
  
  end

  def name
    @name
  end

  # to return articles by author
  def articles
    Article.all.select {|article| article.author.name == self.name}
  end

  # to return unique array of magazine instances by author
  def magazines
    @magazines=Article.all.select do |article|
      if article.author.name == self.name
        article.magazine
      end
    end
    # to get unique magazines
    @magazines.uniq

  end


end
