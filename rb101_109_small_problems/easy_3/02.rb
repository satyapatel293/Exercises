=begin
--------------------- P
input: 2 numbers
output: string which contain the result of + - * / % **
rules: 
  Explicit: 
    - two postive integers
    -  
  Implicit: 
    - 
    -
--------------------- E
==> Enter the first number:
23
==> Enter the second number:
17
==> 23 + 17 = 40
==> 23 - 17 = 6
==> 23 * 17 = 391
==> 23 / 17 = 1
==> 23 % 17 = 6
==> 23 ** 17 = 141050039560662968926103

--------------------- D

--------------------- A
ask for 2 positive integers 
store them as int1 and int2 
compute all operations 
=end

puts "==> Enter the first number:"
first_number = gets.chomp.to_i
puts "==> Enter the second number:"
second_number = gets.chomp.to_i


sum = first_number + second_number
puts "==> #{first_number} + #{second_number} = #{sum}"

minus = first_number - second_number
puts "==> #{first_number} - #{second_number} = #{minus}"

product = first_number * second_number
puts "==> #{first_number} * #{second_number} = #{product}"

quotient = first_number / second_number
puts "==> #{first_number} / #{second_number} = #{quotient}"

remainder = first_number % second_number
puts "==> #{first_number} % #{second_number} = #{remainder}"

power = first_number ** second_number
puts "==> #{first_number} ** #{second_number} = #{power}"