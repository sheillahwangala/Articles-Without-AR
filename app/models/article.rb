class Article

    

    attr_accessor :title
    
    @title = title
    @all = []

    def initialize(title)
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
