=begin
--------------------- P
input: 6 numbers
output: string which states if 6th number appears among the first 5
rules: 
  Explicit: 
    - 6th number is checked against first 5
    - 
  Implicit: 
    - first 5 numbers are put into an array
    - 6th number is checked against array
    - convert the numbers to integers 
--------------------- E
==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].

--------------------- D
array
--------------------- A
ask for 5 numbers 
each round push number into array 
ask for 6th number 
check is 6th number is in array
return yes or no statment 
=end


numbers_array = []
puts "==> Enter the 1st number:"
numbers_array << gets.chomp.to_i
puts "==> Enter the 2nd number:"
numbers_array << gets.chomp.to_i
puts "==> Enter the 3rd number:"
numbers_array << gets.chomp.to_i
puts "==> Enter the 4th number:"
numbers_array << gets.chomp.to_i
puts "==> Enter the 5th number:"
numbers_array << gets.chomp.to_i
puts "==> Enter the last number:"
last_number = gets.chomp.to_i
if numbers_array.include?(last_number)
  puts "The number #{last_number} appears in #{numbers_array}."
else 
  puts "The number #{last_number} does not appears in #{numbers_array}."
end 