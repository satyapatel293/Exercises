=begin
--------------------- P
input: integer greater than 0 (and if user wants sum or product)
output: sum or product of all numbers betwen 1 and integer entered 
rules: 
  Explicit: 
    - choose sum or product 
    - sum or product or consecutive integers from 1 to input integer
  Implicit: 
    - s to compute sum
    - p to compute product 
    - prompts will have >> in front of them 
    - 
--------------------- E
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.
--------------------- D

--------------------- A
ask user for integer greater than 0 
ask user for operation sum or product 
create array of all integers from 1 to integer 
if operation is sum 
  add all integers in array
if operation is product 
  multiply all integers in array
return total 
=end

puts ">> Please enter an integer greater than 0:"
input_number = gets.chomp.to_i 
puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

array_to_number = (1..input_number).to_a

if operation == "s"
  total = array_to_number.inject(:+)
  operation = 'sum'
elsif operation == 'p' 
  total = array_to_number.inject(:*)
  operation = 'product'
end 

puts "The #{operation} of the integers between 1 and #{input_number} is #{total}."



#Below is their solutions which is clearer because the seperated the functions 

def compute_sum(number)
  total = 0 
  1.upto(number) { |value| total += value}
  total
end 

def compute_product(number)
  total = 1 
  1.upto(number) {|value| total *= value}
  total
end 

puts ">> Please enter an integer greater than 0:"
input_number = gets.chomp.to_i 
puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation == 's'
  sum = compute_sum(input_number)
  puts "The sum of the integers between 1 and #{input_number} is #{sum}."
elsif
  product = compute_product(input_number)
  puts "The product of the integers between 1 and #{input_number} is #{product}."
else
  puts "Oops. Unknown operation."
end