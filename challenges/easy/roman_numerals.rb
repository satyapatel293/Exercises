=begin
--------------------- P
Problem: Convert modern decmial numbers into Roman numerals 

input: 
  - Integers up to an including 3000
output: 
  - String rep of Roman numeral  
rules:
  RomanNumeral System 
    - 

  Explicit: 
    - Inputs will be integers 
    - Will only check numbers below 3000
    -  I, V, X, L, C, D, M
      - I == 1 
      - V == 5 
      - X == 10 
      - L == 50 
      - C == 100 
      - D == 500 
      - M == 1000 
    - Numbers will be presents from largest to smallest 
    - if a smaller numeral is before a lager one subtract it from the larger 
    - 90 = XC 
    - 99 = XCIX
    - so We are checking every 10 place 
    can start from bottom an move upward 
    - IVX all correlate to 1's 
    - XLC correlate to 10's 
    - CDM correlate to 100's 
    - M correlates to 1000's
    for 1999
    divide by 10
     - 199 remainder 9 (9 for first set)
    divide by 10 
     - 19 remainder 9 (9 for second set)
    divide by 10 
     - 1 remainder 9 (9 for third set)
    divde by 10 
     - remainder 1 (4th set)
    Then check each num for it's respective set (1's, 5's, 10's position)
      if number if if number divided by either poition == 1 return postion
      if number is 1-3 return first x3 
      if number is 6-8 return second x1 first x3
      if number is 4 return first x1 second x1 
      if number is 9 return fist x1 third x1 
    
    first set IX 
    secxond set XC
    third set CM 
    fourth set M 
    MCMXCIX




      - Will only place three of a numeral of SINGLES in a row at max then will do next numeral - current numeral
      - ie. 3 == III, 4 == IV 
    - Must divide by largest numeral  
      - if remainder = 4X current place current and one larger next 
      - if remainder = 9X current place current and one larger next 
  Implicit: 
    -
    - 
--------------------- E

--------------------- D
Roman numeral class 
constructor to hold decmial number 

integer 
hash holding sets of 1's, 5's, 10's
string holding 
--------------------- A
Constructor 
@number = decimal number 

#to_roman 
set result string to empty 

take number convert to string split to array of chars
maps chars back to integer 
reverse arrary 
 
numerals = [['I','V','X'], ['X','L','C']. ['C','D','M'], ['M']]
map values with current array in numerals array 
    follow rules above (helper method)
      if number if is 1 or 5 return postion
      if number is 1-3 return first x3 
      if number is 6-8 return second x1 first x3
      if number is 4 return first x1 second x1 
      if number is 9 return fist x1 third x1 
        if number is 0 return empty string 
reverse the array 
join and return 
    

    - IVX all correlate to 1's 
    - XLC correlate to 10's 
    - CDM correlate to 100's 
    - M correlates to 1000's


RM_postion takes number and array 
  holder = '', a[0], a[0]*2, a[0]*3, a[0]+a[1], 
  holder[number]
        end 
=end


class RomanNumeral
  attr_reader :number
  def initialize(number)
    @number = number 
  end 

  def to_roman
    numerals = [['I','V','X'], ['X','L','C'], ['C','D','M'], ['M', '', '']]
    reversed_dec_array = @number.digits

    reversed_numerals = reversed_dec_array.map.with_index do |num, index| 
      change_digit(num, numerals[index])
    end 

    reversed_numerals.reverse.join
  end 


  private

  def change_digit(num, arr)
    values = [
      '', arr[0], arr[0]*2, arr[0]*3, 
      arr[0]+arr[1], arr[1], arr[1]+arr[0], 
      arr[1]+arr[0]*2, arr[1]+arr[0]*3, 
      arr[0]+arr[2]
    ] 
    values[num]
  end 
end 

p RomanNumeral.new(911).to_roman



# Thier soultion 

class RomanNumeral
  attr_reader :number

  ROMAN_NUMERALS = {
    "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "XC" => 90,
    "L" => 50,
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1
  }

  def initialize(number)
    @number = number
  end

  def to_roman
    roman_version = ''
    to_convert = number

    ROMAN_NUMERALS.each do |key, value|
      multiplier, remainder = to_convert.divmod(value)
      if multiplier > 0
        roman_version += (key * multiplier)
      end
      to_convert = remainder
    end
    roman_version
  end
end


