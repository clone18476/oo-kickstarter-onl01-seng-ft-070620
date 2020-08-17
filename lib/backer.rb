
#class Backer 
#  attr_accessor :backed_projects, :backers
#  attr_reader :name     # name accessible through an attribute reader
#  
#  def initialize(name)    # takes a name on initialization, accessible through an attribute reader
#    @name = name
#    @backed_projects = []    # initializes with a @backed_projects attribute, an empty array
#  end
#  
#  def back_project(project)           # accepts a Project as an argument and stores the project
#    @backed_projects << project     # argument in a backed_projects array
#    project.backers << self         
#  end
#end

class Backer 
  attr_accessor :backed_projects, :backers
  attr_reader :name
  
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  
  def back_project(project)
    @backed_projects << project
    project.backers << self
  end
end

