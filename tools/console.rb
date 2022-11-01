require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
author1 = Author.new("MaryJane")
author2 = Author.new("annbelle")
author3 = Author.new("BestAuthor")

magazine1 = Magazine.new("corporate", "Secrets")
magazine2 = Magazine.new("Kids", "Disney")
magazine3 = Magazine.new("Fashion", "Newlook")

article1 = Article.new(author1, magazine2, "first_title")
article2 = Article.new(author2, magazine1, "second_title")
article3 = Article.new(author2, magazine1, "third_title")
article4 = Article.new(author1, magazine3, "fourth_title")

author1.add_article(magazine2, "first_title")
author2.add_article(magazine1, "second_title")
author3.add_article(magazine3, "forth_title")





### DO NOT REMOVE THIS
binding.pry

0
