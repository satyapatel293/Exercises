=begin
--------------------- P
input: string
output: number of charcters in string minus spaces 
rules: 
  Explicit: 
    - count all characters but spaces 
    - ask user for input 
  Implicit: 
    - 
    - 
--------------------- E
Please write word or multiple words: walk, don't run
There are 13 characters in "walk, don't run".
--------------------- D

--------------------- A
=end


puts "Please write word or multiple words:"
string = gets.chomp

total_characters = string.delete(' ').size

puts "There are #{total_characters} characters in \"#{string}\"."
