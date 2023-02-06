class Cat
  def self.generic_greeting
    puts "Hello! I'm a cat!"
  end 
end

Cat.generic_greeting


kitty = Cat.new
kitty.class.generic_greeting


# What happens if you run kitty.class.generic_greeting? Can you explain this result?
=begin
 this would work because calling class on kitty will return Cat which is the class and we can call the class method on that  
=end