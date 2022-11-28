=begin
--------------------- P
input: string of words
output: hash of which shows number of words of diff sizes
rules: 
  Explicit: 
    - word is a string that doesn't include a space 
    - 
  Implicit: 
    -
    - 
--------------------- E
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}
--------------------- D
array
hash
--------------------- A
inital emppty hash
string is split by spaces 
itterate through array of words
add word size to key += 1 
return hash
=end


def word_sizes(string)
  size_hash = Hash.new(0)
  string.split.each do |word|
    size_hash[word.length] += 1
  end 
  size_hash
end 

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}


=begin
 Important part of this exercise is initalizing the hash using the Hash.new method to help
 get a default value of 0  
=end