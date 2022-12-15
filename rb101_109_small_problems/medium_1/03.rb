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


def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  digits = number.to_s.chars
  digits[-n..-1] = rotate_array(digits[-n..-1]) 
  digits.join.to_i
end 

def max_rotation(number)
  counter = number.to_s.size 
  result = number 

  loop do 
    break if counter == 1 
    result = rotate_rightmost_digits(result, counter)
    counter -= 1 
  end 

  result.to_i 
end 


p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

#better loop 

def max_rotation(number)
  number_digits = number.to_s.size
  number_digits.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
end



#maintain zeros 
# change line 27 remove to_i and keep all strings until end 
def rotate_rightmost_digits(number, n)
  digits = number.to_s.chars
  digits[-n..-1] = rotate_array(digits[-n..-1]) 
  digits.join #this line
end 
