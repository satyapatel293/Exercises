#password.rb
PASSWORD = "SatyaPatel"

loop do
  puts ">> Please enter your password: "
  password_try = gets.chomp
  break if password_try == PASSWORD
  puts ">> Invalid password!"
end 

puts "Welcome!"

