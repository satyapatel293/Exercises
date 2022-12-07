=begin
--------------------- P
input: array of strings
output: new array of string with vowels removed
rules: 
  Explicit: 
    - remove AEIOU 
    - 
  Implicit: 
    - capital and lower case vowels both removed
    - if returns empty string if all letters remvoed
--------------------- E

--------------------- D

--------------------- A
take inputs array
iterate through array
delete AEIOUaeiou 
return array 
=end


def remove_vowels(array)
  array.map do |word|
    word.delete "AEIOUaeiou"
  end 
end


p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']