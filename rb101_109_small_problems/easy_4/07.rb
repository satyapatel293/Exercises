=begin
--------------------- P
input: string
output: integer
rules: 
  Explicit: 
    - may not use String#to_i or Integer() methods 
    - dont worry about leading + or - 
    - assume all charcters will be numeric 
  Implicit: 
    -
    - 
--------------------- E
string_to_integer('4321') == 4321
string_to_integer('570') == 570
--------------------- D

--------------------- A
take string of digits 
convert each char to element in array
reverse the array
initalize base 10s place variable
initalize varaible to hold total 

check each digit  
assagin each digit to numeric vaule 0-9 
multiply by of 10s place starting at end 
add to total
increment 10s by *10

return total
add
=end

def string_to_integer(string_number)
  string_number.reverse!
  current_base = 1 
  integer_number = 0  
  
  string_number.each_char do |digit|
    numeric_digit = case digit
                    when '0' then 0
                    when '1' then 1
                    when '2' then 2
                    when '3' then 3
                    when '4' then 4
                    when '5' then 5
                    when '6' then 6
                    when '7' then 7
                    when '8' then 8
                    else 9
                    end
    
    integer_number += current_base * numeric_digit
    current_base *= 10 
  end

  integer_number
end

p string_to_integer('4321') #== 4321
p string_to_integer('570') #== 570


# use a hash to store the info! 

DIGITS = { 
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, 
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char]  }

  value = 0 
  digits.each {|digit| value = 10 * value + digit }
  value
end 




HEXADIGITS = { 
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, 
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9, 
  'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 
  'E' => 14, 'F' => 15, 'a' => 10, 'b' => 11, 
  'c' => 12, 'd' => 13, 'e' => 14, 'f' => 15  
}

def hexadecimal_to_integer(string)
  digits = string.chars.map { |char| HEXADIGITS[char]  }

  value = 0 
  digits.each {|digit| value = 16 * value + digit }
  value
end 

p hexadecimal_to_integer('4D9f') #== 19871