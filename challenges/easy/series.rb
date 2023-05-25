=begin
--------------------- P
program takes string of digits and length 
returns all possible consecutive number serise of legnth 

rules: 
  Explicit: 
    - throw ArgumentError if length is longer string
    - retrun an array of arrays which contain integers 
  Implicit: 
    - can have overlapping series 
    - carful not to pull nil at end of serise 
--------------------- E
"01234", 3 = [[0, 1, 2], [1, 2, 3], [2, 3, 4]]
--------------------- D
Series class 
 constructor
 holds string_num


 slices method
  throw error is length > string length 
  oldss array of digits 
--------------------- A
 slices method
  throw error is length > string length 
  holds array of digits 

  empty array 
  push each_cons into array 
=end


class Series
  attr_reader :string_digits
  def initialize(string_digits)
    @string_digits = string_digits
  end 

  def slices(length)
    raise ArgumentError.new if length > string_digits.length 

    digits = string_digits.chars.map(&:to_i)
    result = []
    digits.each_cons(length) {|sub_arr| result << sub_arr }
    result
  end 
end 

p Series.new('01234').slices(2)