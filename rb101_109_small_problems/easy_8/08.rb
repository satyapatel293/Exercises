=begin
--------------------- P
input: string
output: new string with every consonant character doubled
rules: 
  Explicit: 
    - 
    - 
  Implicit: 
    -
    - 
--------------------- E

--------------------- D

--------------------- A
break string into characters 
check if character is vowel double if so 
add chars to new string
return new string
=end


LETTERS = ('a'..'z').to_a
VOWELS = %(a e i o u)
CONSONANTS = LETTERS.reject {|letter| VOWELS.include?(letter)}

def double_consonants(string)
  result = ''
  string.each_char do |char|
    if CONSONANTS.include?(char.downcase)
      result << char << char
    else 
      result << char
    end 
  end 
  result
end


p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""