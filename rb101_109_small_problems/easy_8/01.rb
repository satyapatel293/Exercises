=begin
--------------------- P
input: array of ints 
output: int of sum of each  
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
initalize sum to = 0 
array size
loop through array
add array size * element 
array size - 1 

=end


def sum_of_sums(array)
  sum = 0 
  factor = array.size
  array.each do |num|
    sum += num * factor
    factor -= 1 
  end 
  sum 
end 


puts sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
puts sum_of_sums([4]) == 4
puts sum_of_sums([1, 2, 3, 4, 5]) == 35


#what they were looking for is differnt 

def sum_of_sums(numbers)
  sum = 0
  accumulator = 0

  numbers.each do |num|
    accumulator += num
    sum += accumulator
  end 

  sum
end 


#OR 

def sum_of_sums(numbers)
  sum_total = 0
  1.upto(numbers.size) do |count|
    sum_total += numbers.slice(0, count).reduce(:+)
  end
  sum_total
end