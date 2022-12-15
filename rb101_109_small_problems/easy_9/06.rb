=begin
--------------------- P
input: string
output: array of string which contain all words and thier lengths 
rules: 
  Explicit: 
    - each array element contains word then space then number of chars of word 
    - 
  Implicit: 
    -
    - 
--------------------- E

--------------------- D

--------------------- A
split string into array of words 
maps to arry 
  the word and legth of word 
  check length of each word and append to word 

=end


def word_lengths(string)
  words = string.split 
  words.map do |word|
    "#{word} #{word.length}"
  end 
end 