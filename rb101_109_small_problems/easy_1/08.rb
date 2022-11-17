=begin
input: array of intergers 
oupts: interger which is the average of all the number in array
rules
  explicit 
    - input numbers will always be postive integers
    - result will also be postive integers
    - array will never be empty 
  implicit 
    - division will retrun integer value which may not be the exact average 

examples/test cases 
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

data structures 
arrays 

algorithm 
take sum of all integers in array 
divide sum by length of array 
retrun result 

=end 


def average(array)
  array.sum / array.length
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40


# other solutions 

def average(array)
  total = array.reduce { |sum, number| sum + number }
  total / array.length
end 


# further exploration change return value to a float 

def average(array)
  total = array.reduce { |sum, number| sum + number }
  total.to_f / array.length
end 

puts average([1, 6]) #== 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) #== 25
puts average([9, 47, 23, 95, 16, 52]) #== 40
