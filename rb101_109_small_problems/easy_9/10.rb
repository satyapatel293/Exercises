=begin
--------------------- P
input: nested array of fruit/ quanitity
output: array of total each fruit 
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
itterate through array 
transform each to quantiy 
flattent array
=end


def buy_fruit(fruits)
  fruits.map do |fruit, quantity|
    [fruit] * quantity 
  end.flatten 
end 

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
["apples", "apples", "apples", "orange", "bananas","bananas"]