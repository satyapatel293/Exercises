=begin
--------------------- P
input: 
output: 
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
=end


puts "Enter a noun:"
noun = gets.chomp
puts "Enter a verb:"
verb = gets.chomp
puts "Enter an adjective:"
adjective = gets.chomp
puts "Enter an adverb:"
adverb = gets.chomp


phrase_1 = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarous!"
phrase_2 = "#{adjective} #{noun} #{verb} #{adverb} into a wall"
phrase_3 = "Does #{adjective} jumping make #{noun} #{adverb} #{verb}?"

puts [phrase_1, phrase_2, phrase_3].sample
