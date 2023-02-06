=begin
Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

Examples:
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

--------------------- P
input: 
output: 
  goal: 
rules: 
  Explicit: 
    - 
    - 
  Implicit: 
    -
    - 
--------------------- E

--------------------- D
array
--------------------- A
holder array []
loop do 
  num, remainder =  num.divmod 10 
  hodlder.prepend (reminder)
  break if num <= 0 
end 

holder array
=end


def digit_list(num)
  num.digits.reverse
end 


p digit_list(12345) #== [1, 2, 3, 4, 5]     # => true
p digit_list(7) #== [7]                     # => true
p digit_list(375290) #== [3, 7, 5, 2, 9, 0] # => true
p digit_list(444) #== [4, 4, 4]             # => true
