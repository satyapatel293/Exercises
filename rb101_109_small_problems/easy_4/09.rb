DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(number)
  string = number.digits.reverse
  string.map! { |char| DIGITS[char]}
  string.join
end





# p integer_to_string(4321) #== '4321'
# p integer_to_string(0) #== '0'
# p integer_to_string(5000) #== '5000'


# thier soultion makes sense to use and array because the numbers are already setting the index

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

p integer_to_string(4321) #== '4321'
p integer_to_string(0) #== '0'
p integer_to_string(5000) #== '5000'
