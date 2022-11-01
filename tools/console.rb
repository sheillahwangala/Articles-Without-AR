require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
author1 = Author.new("MaryJane")

magazine1 = Magazine.new("corporate", "Secrets")

article1 = Article.new(author1, magazine1, "article_title")

author1.add_article(magazine1, "given_title")





### DO NOT REMOVE THIS
binding.pry

0
