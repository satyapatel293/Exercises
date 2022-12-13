=begin
--------------------- P
input: array of integers
output: float of average of all integers rounded to 3 decminal places
rules: 
  Explicit: 
    - round to 3 decimla places 
    - 
  Implicit: 
    -
    - 
--------------------- E

--------------------- D

--------------------- A
multiple all digits with inject 
divide by array size converted to float 
round to 3 decimals
=end

def show_multiplicative_average(array)
  average = array.inject(:*) / (array.size.to_f)
  formated_average = format('%.3f', average.round(3))
  "The result is #{formated_average}"
end




show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
