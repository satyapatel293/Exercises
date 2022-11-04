# something.rb

# loop do 
#   puts ">> Do you want me to print something? (y/n)"
#   input = gets.chomp.downcase
#   if input == "y"
#     puts "something"
#     break
#   elsif input == "n"
#     break 
#   else 
#     puts ">> Invalid input! Please enter y or n"
#   end 
# end 

#other SOLUTION

answer = nil 

loop do 
  puts ">> Do you want me to print something? (y/n)"
  answer = gets.chomp.downcase
  break if %w(y n).include?(answer)
  puts ">> Invalid input! Please enter y or n"
end 

puts "something" if answer == "y"


#this is a better solution ^ 