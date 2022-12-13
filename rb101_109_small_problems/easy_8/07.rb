=begin
--------------------- P
input: string
output: new string with every character doubled
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
break string into characters 
double each place in new string 
return new string
=end


def repeater(string)
  result = ''
  string.each_char do |char|
    result << char * 2 
  end 
  result
end 

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''