=begin
--------------------- P
input: integer
output: next featured number
rules: 
  Explicit: 
    - featured numbers are 
      - multiples of 7
      - odd 
      - contain no duplicate digits
    - find next featured number greater than input
  Implicit: 
    - 
    - 
--------------------- E

--------------------- D

--------------------- A
current digit = start + 1
stop at 9876543210

# curr current digit up to stop 
#   if curr.odd?
#     curr %7 == 0 
#     curr.digits.uniq == curr.digits 
#   reutrn curr


'There is no possible number that fulfills those requirements'

=end

def is_feature?(number)
  number % 7 == 0 &&
  number.odd? &&
  number.digits.uniq == number.digits
end



def featured(start)
  current = start + 1 
  stop = 9876543210

  current.upto(stop) do |number|
    return number if is_feature?(number)
  end 

  'There is no possible number that fulfills those requirements'
end 
 

# p featured(12) == 21
# p featured(20) == 21
# p featured(21) == 35
# p featured(997) == 1029
# p featured(1029) == 1043
# p featured(999_999) == 1_023_547
# p featured(999_999_987) == 1_023_456_987

# p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements


#thier soultion is faster because it doesn't need to calucalte all the digits just need to go to the first odd 7 then itterate to the next odd 7 from there 


def featured(number)
  number += 1 
  number += 1 until number % 7 == 0 && number.odd?

  loop do 
    return number if number.digits.uniq == number.digits
    number += 14 
    break if number >= 9876543210
  end 

  'There is no possible number that fulfills those requirements'
end



p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

