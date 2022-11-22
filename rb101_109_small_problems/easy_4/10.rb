DIGITS2 = [ '0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  string = ''
  loop do 
    number, remainder = number.divmod(10)
    string.prepend(DIGITS2[remainder])
    break if number == 0
  end
  string
end  



def signed_integer_to_string(number)
  return integer_to_string(number) if number == 0 
  number < 0 ? "-#{integer_to_string(-number)}" : "+#{integer_to_string(number)}"
end 



p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'