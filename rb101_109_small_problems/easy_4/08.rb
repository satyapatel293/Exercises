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


def string_to_signed_integer(string)
  if string[0] == '-'
    -string_to_integer(string.delete('-')) 
  elsif string[0] == '+' 
    string_to_integer(string.delete('+'))
  else
    string_to_integer(string)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100




# modification and better use of csae statment here 
def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end


#further explration

def string_to_signed_integer(string)
  abs_value = string.delete("^0-9")
  number = string_to_integer(abs_value) 
  string[0] == '-' ? -number : number
end


p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100