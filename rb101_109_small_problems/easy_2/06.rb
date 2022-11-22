=begin
--------------------- P
input: 
output: 
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
=end

# (1..99).each {|num| puts num if num.odd?}

# 1.upto(99) {|i| puts i if i.odd?} 

puts (1..99).to_a.select { |i| i % 2 != 0}

