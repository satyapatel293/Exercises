=begin
--------------------- P
input: Integer(n)
output: the difference between the 
square of the sum of the first n postive ints 
and the sum of the square of the first n postive ints

rules: 
  Explicit: 
    - 
    - 
  Implicit: 
    -
    - 
--------------------- E

--------------------- D

--------------------- A
range of 1 to n 
square = reduce :+ the range and square it 
sum = square each digit in range and reduce it 

return square - sum 

=end


def sum_square_difference(n)

  (1..n).reduce(:+)**2 - (1..n).reduce {|sum, value| sum + value*value}

end


#soultion is hard to read and understand theirs is longer but doesn't require explaination 

def sum_square_difference(n)
  sum = 0
  sum_of_squares = 0

  1.upto(n) do |value|
    sum += value
    sum_of_squares += value**2
  end

  sum**2 - sum_of_squares
end