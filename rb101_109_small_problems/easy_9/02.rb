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
check if number is double number
is number even 
is first half == second half 
if so return number 
if not return double number 
=end


def twice(num)
  string_num = num.to_s
  length = string_num.size
  half = length/2 
  if length.even? && string_num[0, half] == string_num[half, half]
    num
  else 
    num * 2 
  end
end



#using half as a variable is confusing because it means two things here 

twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10


# their solution is a bit more clear just compare the two halfs 


def twice(number)
  string_number = number.to_s
  center = string_number.size / 2
  left_side = center.zero? ? '' : string_number[0..center - 1]
  right_side = string_number[center..-1]

  return number if left_side == right_side
  return number * 2
end