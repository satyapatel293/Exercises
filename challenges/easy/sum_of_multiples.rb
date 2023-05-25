=begin
--------------------- P
given a set of numbers 
find the sum of all the multiples 
of those numbers up to a target 
number not including the target number 

if no set of numbers is given default
the set of numbers to be 3 and 5 


input: 
  - target int
  - list of ints 
output: 
  - int 
rules: 
  Explicit: 
    - do not include target number as mutliple  
  Implicit: 
    - do not count multiples more than once 
--------------------- E
target 20 
list 3, 5, 
multiples = 3, 5, 6, 9, 10, 12, 15, and 18. 
sum of multiples = 78.
--------------------- D
SumOfMultiples class 
  constructor 
    - list of numbers 
  
  #to method 
    takes target number 

  ::to method 
    Uses #to method with default 3,5 for list of numbers 

--------------------- A

itterate through list of numbers 
find max divsor = target divied by current num
create range of 1 to max divsor 
map over range multiple each value by current num

take this new array of multiples 
flatten it 
find all uniq values 
remove target number 

sum array 
=end


class SumOfMultiples

  def self.to(target)
    self.new(3,5).to(target)
  end

  def initialize(*number_set)
    @number_set = number_set
  end 

  def to(target)
    all_multiples_arrays = all_multiples(target)

    total_multiples = all_multiples_arrays.flatten.uniq
    total_multiples.delete(target)
    total_multiples.sum
  end 

  private 
  
  def all_multiples(target)
    @number_set.map do |value|
      max_multipler = target / value 
      (1..max_multipler).map { |multipler| value * multipler}
    end
  end
end 


p SumOfMultiples.new(4, 6).to(15)
p SumOfMultiples.to(100)
p SumOfMultiples.new(43, 47).to(10_000)


# Thier soultion

class SumOfMultiples
  attr_reader :multiples

  def self.to(num)
    SumOfMultiples.new().to(num)
  end

  def initialize(*multiples)
    @multiples = (multiples.size > 0) ? multiples : [3, 5];
  end

  def to(num)
    (1...num).select do |current_num|
      any_multiple?(current_num)
    end.sum
  end

  private

  def any_multiple?(num)
    multiples.any? do |multiple|
      (num % multiple).zero?
    end
  end
end