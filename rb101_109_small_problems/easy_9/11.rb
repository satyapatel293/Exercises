=begin
--------------------- P
input: array of words 
output: prints arrays of group of word that all contain same letters 
rules: 
  Explicit: 
    - anagram where all the letter are the same but in deffernet order
    - 
  Implicit: 
    - caintain same number of letters 
    - dont repeat outputs 
--------------------- E

--------------------- D

--------------------- A
itterate through each word 
store each letter of word in holder 
check each other word 
start array holder 
  if other words all letters are in holder then add this to group array 

    printu array holder 
move to next word 
=end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

  result = {}

  words.each do |word|
    key = word.split('').sort.join
    if result.has_key?(key)
      result[key].push(word)
    else
      result[key] = [word]
    end
  end
  

p result
  result.each_value do |v|
    puts "------"
    p v
  end







#   skip = []

# words.each do |word|
#   next if skip.include?(word)
  
#   anagram = []
#   letters = word.chars.sort
#   words.each do |other|
#     if other.chars.sort == letters   
#       anagram << other
#       skip << other 
#     end 
#   end 
#   p anagram
# end 
