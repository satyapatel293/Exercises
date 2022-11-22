=begin
--------------------- P
input: bill amount and tip amount
output: tip and total bill
rules: 
  Explicit: 
    - 
    - 
  Implicit: 
    - count tip and bill to 1 decimal 
    - tip in entered in percentage point ie 10 is equal to 10% (or .10)
--------------------- E
What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0
--------------------- D

--------------------- A
input bill 
store bill 
input tip percentage
store tip in percentage 

computer tip 
compute total bill
return both
=end

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_f

tip = (bill * (tip_percentage/100)).round(2)
total = (tip + bill).round(2)

puts "The tip is #{format("$%.2f", tip)} " 
puts "The total is #{format("$%.2f", total)}"

