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

# puts "What is your name?"
# name = gets.chomp 
# if name[-1] == '!'
#   name = name.chop.upcase
#   puts "HELLO #{name}. WHY ARE YOU SCREAMING?"
# else 
#   puts "Hello #{name}."
# end


puts "What is your name?"
name = gets.chomp 
if name[-1] == '!'
  name.chomp!('!')
  puts "HELLO #{name.upcase}. WHY ARE YOU SCREAMING?"
else 
  puts "Hello #{name}."
end

