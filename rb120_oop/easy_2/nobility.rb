module Walkable
  def full_name 
    self.class == Noble ? "#{title} #{name}" : name 
  end  
    
  def walk
   puts "#{full_name} #{gait} forward"
  end 
end


class Person
 attr_reader :name
 include Walkable
 def initialize(name)
   @name = name
 end

 private

 def gait
   "strolls"
 end
end

class Noble < Person
  attr_reader :title
  def initialize(name, title)
    super(name)
    @title = title 
  end

  private
  def gait
    'struts'
  end 
end 

class Cat
 attr_reader :name
 include Walkable

 def initialize(name)
   @name = name
 end

 private

 def gait
   "saunters"
 end
end

class Cheetah
 attr_reader :name
 include Walkable

 def initialize(name)
   @name = name
 end

 private

 def gait
   "runs"
 end
end


byron = Noble.new("Byron", "Lord")
byron.walk
# => "Lord Byron struts forward"

mike = Person.new("Mike")
mike.walk
# => "Mike strolls forward"

kitty = Cat.new("Kitty")
kitty.walk
# => "Kitty saunters forward"

flash = Cheetah.new("Flash")
flash.walk
# => "Flash runs forward"