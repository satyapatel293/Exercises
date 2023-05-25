=begin
10:45 11:20
--------------------- P
compute the scrabble score for a word based off 
the sum of the values associated with each letter 

input: 
  - string or nil 
  - can be empty string
  - can contain escaped chars 
  - capital and lowercase letters
output: 
  - integer 
  - each letter maps to a value in the letters hash 


rules: 
  Explicit: 
    - compute total value of all letters base off below chart 

    letters = {
      'a' => 1, 'e' => 1, 'i' => 1, 'o' => 1, 'u' => 1, 
      'l' => 1, 'n' => 1, 'r' => 1, 's' => 1, 't' => 1, 
      'd' => 2, 'g' => 2,'b' => 3, 'c' => 3, 'm' => 3, 
      'p' => 3, 'f' => 4, 'h' => 4, 'v' => 4, 'w' => 4, 
      'y' => 4, 'k' => 5, 'j' => 8, 'x' => 8, 'q' => 10, 
      'z' => 10
    }

    Implicit: 
    - nil == 0 
    - empty string == 0 
    - escaped chars and spaces == 0 
    - casing doesn't matter 



    --------------------- E
f == 4 
street == 6 

--------------------- D
Scrabble class 
    constructor 
    @word 

    score 
      returns zero if word is nil 
      else performs operaiton
        to split string into chars then map each char to repect value 

--------------------- A
  split word into letters by whitespaces 
  map current value to character
  sum array 
=end

class Scrabble
  attr_reader :word
  VALUES = {
    'a' => 1, 'e' => 1, 'i' => 1, 'o' => 1, 'u' => 1, 
    'l' => 1, 'n' => 1, 'r' => 1, 's' => 1, 't' => 1, 
    'd' => 2, 'g' => 2,'b' => 3, 'c' => 3, 'm' => 3, 
    'p' => 3, 'f' => 4, 'h' => 4, 'v' => 4, 'w' => 4, 
    'y' => 4, 'k' => 5, 'j' => 8, 'x' => 8, 'q' => 10, 
    'z' => 10
  }

  def initialize(word)
    @word = word 
  end 

  def score
    return 0 if word == nil
    letters = word.downcase.split(/\s|\B/)
    letters.map {|char| VALUES[char]}.sum  
  end 

  def self.score(str)
    self.new(str).score
  end 
end 