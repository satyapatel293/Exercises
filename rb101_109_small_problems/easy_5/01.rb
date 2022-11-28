=begin
--------------------- P
input: string
output: integer representing sum of all ASCII values in stirng
rules: 
  Explicit: 
    - ASCII string value is sum of the ASCII vlaues of every charcter in the string
    - write a method 
  Implicit: 
    - '' represent nil which is ASCII value of 0 
    -  
--------------------- E
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0
--------------------- D
Array 
--------------------- A
string input is split into array of each character 
intial sum to 0
loop to check 
check ASCII value of each character 
Add value to sum
end loop 
return sum

=end

def ascii_value(string)
  ascii_value = 0 
  string.chars.each { |character| ascii_value += character.ord }
  ascii_value
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0