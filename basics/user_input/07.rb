# login.rb

USERNAME = "satya"
PASSWORD = "Top"

loop do 
  puts ">> Please enter user name: "
  user_name = gets.chomp
  puts ">> Please enter passowrd: "
  password_try = gets.chomp
  break if password_try == PASSWORD && user_name == USERNAME
  puts ">> Authorization failed!"
end 

puts "Welcome!"