=begin
Write a method that takes one argument, a positive integer, 
and returns a list of the digits in the number.

ex. 
puts digit_list(12345) == [1, 2, 3, 4, 5]  

P
input postive interger 
output array of digits

takes one arugment 
must be postive integer
returns array of intergers 

return an array which contains each digit of the number 


E

D
A
C

=end 


def digit_list(number)
  reversed_array = number.digits
  return reversed_array.reverse 
end

p digit_list(1235434)
p digit_list(12345)

#practice exercise again

def digit_list(number)
  digits_list = []
  number.to_s.each_char { |digit| digits_list << digit.to_i }
  digits_list
end 

p digit_list(1235434)
p digit_list(12345)


# Soultions 
def digit_list(number)
  digits = []
  loop do 
    number, remainder = number.divmod(10)
    digits.unshift(remainder)
    break if number == 0 
  end
  digits
end

#divmod returns the division and remainder (will be same sign at using divsiovaro I think)


#alt soultion!
def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

