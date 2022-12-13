=begin
--------------------- P
input: postive int
output: reverse postive int
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
change int to string
prepend new character to string 

=end


def reversed_number(number)
  string = number.to_s.reverse
  string.to_i 
end



p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) #== 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1