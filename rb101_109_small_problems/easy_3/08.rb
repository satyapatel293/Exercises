=begin
--------------------- P
input: string 
output: boolean 
rules: 
  Explicit: 
    - return true if string is a boolean 
    - case, puncutation and spaces matter
  Implicit: 
    -
    - 
--------------------- E
palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true
--------------------- D

--------------------- A
reverse the string 
if == to string then return true
=end

def palindrome?(string)
  !!(string == string.reverse)
end 

palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true