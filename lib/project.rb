
class Project 
  attr_accessor :backers
  attr_reader :title
  
  def initialize(title)   # takes a title on initialization, accessible through an attribute reader
    @title = title 
    @backers = []      # initializes with a @backers attribute, an empty array
  end
  
  def add_backer(backer)   # accepts a Backer as an argument and stores it in a backers array
    Backer.new(self, backer)
    @backers << backer
    backer.backed_project << self
  end
  
end

