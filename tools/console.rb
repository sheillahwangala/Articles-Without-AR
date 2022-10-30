require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
author_object = Author.new("MaryJane")
magazine_object = Magazine.new("Young", "Stars")
magazine_object.name

article_name = Article.new(author_object, magazine_object, "New_Article")

author_object.name
magazine_object.name

new_author_object = Author.new("Wangala")
new_magazine_object = Magazine.new("corporate", "Secrets")
new_article_name = Article.new(first_author_object, first_magazine_object, "Article_Two" )











### DO NOT REMOVE THIS
binding.pry

0
