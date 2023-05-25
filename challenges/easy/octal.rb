=begin
--------------------- P
Convert a base 8 number to a base 10 number 
ocatal numbers counted like so 
  - each postions from left to right 
    8 ^ n-1  * postion
    so 213 = 8^2*2 + 8^1*1 + 8^0*3 = 139 
  - each postion can only be 0-7 

input: 
  - string
  - must handle invalid string as 0 
output: 
  - integer 

    
rules: 
  Explicit: 
    - 
    - 
  Implicit: 
    -
    - 
--------------------- E
130 = 88 
2047 == 1063
9 = 0
abc1z = 0 

see test cases 
--------------------- D
Octal class 
 @base8 

to_decimal method 
store digits in array 
--------------------- A
check if base8 contains anything exect 0-7 string 
scan string for [^0-7]
if so return 0 

convert string to digits in reverse order 
map with index the current number times 8^index 
sum total 


=end


class Octal
  def initialize(num)
    @num = num 
  end 

  def to_decimal 
    return 0 unless num.scan(/[^0-7]/).empty?

    # convert to integer then present as reverse array of chars 
    octal_positions = num.to_i.digits

    octal_positions.map.with_index {|int, index| int * (8 ** index) }.sum
  end
  
  private 
  attr_accessor :num
end 

p Octal.new('2047').to_decimal


# Thier solution 

class Octal
  attr_reader :number

  def initialize(str)
    @number = str
  end

  def to_decimal
    return 0 unless valid_octal?(number)

    arr_digits = number.to_i.digits

    new_number = 0
    arr_digits.each_with_index do |num, exponent|
      new_number += (num * (8 ** exponent))
    end

    new_number
  end

  private

  def valid_octal?(num)
    num.chars.all? {|n| n =~ /[0-7]/}
  end
end