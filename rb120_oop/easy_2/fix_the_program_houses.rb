class House
  include Comparable
  attr_reader :price

  def initialize(price)
    @price = price
  end

  def <=> (other_house)
    self.price <=> other_house.price
  end
end

home1 = House.new(100_000)
home2 = House.new(150_000)
puts "Home 1 is cheaper" if home1 < home2
puts "Home 2 is more expensive" if home2 > home1



=begin 
further exploration 

This might be a good way to compare houses(price) or by size 
price generally isn't the only ciretera when comparing houses though 
might run into issues 


other classes where comparable is useful is where we have numbers 
such as bank accounts, items which cost money, tickets, ect.. 

=end