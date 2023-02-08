class Pet
  def initialize(name, age)
    @name = name
    @age = age
  end
end

class Cat < Pet
  def initialize(name, age, colors)
    super(name, age)
    @colors = colors
  end 

  def to_s
    "My cat #{@name} is #{@age} years old and has #{@colors} fur."
  end
end

pudding = Cat.new('Pudding', 7, 'black and white')
butterscotch = Cat.new('Butterscotch', 10, 'tan and white')
puts pudding, butterscotch



=begin
 further exploration 
 we may be able to omit initalize from cat if we put the color parameter in the initalize method for Pets superclass because the Cat class will use the same initalize method 
 this may be a good idea if other Pet classes have colors but may not if others don't need this attribute 
 
 You may forget the inputs from the superclass if you do it this way 


=end