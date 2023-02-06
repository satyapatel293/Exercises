=begin
Input: postive integer
Output: string of alteranting 1 and 0's statring with 1 
rules:
  explict 
    - takes a postive integer 
    - returns a string of alternating 1 and 0 starting with 1 
    - string should be length of interger 
  implicit 
    - 

Examples:
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

Data strucutres:
array

Algorithms:
take input x as length of string 
create empty string 
populate with '1' and '0' alernating until string is length x 
produce output string of x length

=end

def stringy(string_length)
  string = ''
  while string.length < string_length
    string << '1'
    break if string.length == string_length
    string << '0'
  end
  string
end 

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

#solution provided is more robust maybe easier to modify 

def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0 
    numbers << number 
  end 

  number.join
end 





# further exploration add optional arugmetnn that defaults to 1 
# if set to 0 start string with 0 and alteranate 0/1 
 
def stringy(size, zero_first=1)
  numbers = []

  first_number = 1
  second_number = 0 

  if zero_first == 0 
    first_number = 0 
    second_number = 1 
  end
  
  size.times do |index|
    number = index.even? ? first_number : second_number
    numbers << number 
  end 

  numbers.join
end 

puts stringy(8)
puts stringy(8, 0)
