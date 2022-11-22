=begin
--------------------- P
input: two statments
output: true or flase
rules: 
  Explicit: 
    - only one of two stamtments is true
    - boolean return
  Implicit: 
    -
    - 
--------------------- E
xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false
--------------------- D

--------------------- A
return true if only one condition is false and other is true 

=end

def xor?(condition1, condition2)
  !!(condition1 && !condition2) || (!condition1 && condition2)
end 

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false