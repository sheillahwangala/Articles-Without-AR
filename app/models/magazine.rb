class Magazine
  attr_accessor :name, :category

  @name = name
  @category = category
  @all = []

  def initialize(name, category)
    @name = name
    @category = category
    
  end

  def magazine_name
    @name
  end

  def mag_category
    @category
  end


end
