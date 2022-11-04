#lsprinter.rb

lines = nil 

loop do 
  puts ">> How many line do you want? Enter a nymber >=3: "
  lines = gets.chomp.to_i
  break if lines >= 3
  puts "Thats not enough lines."
end 

while lines > 0 
  puts "Launch School is the best!"
  lines -= 1 
end 

#lines.times {puts "Launch School is the best!"}
# alternate soultion less code 