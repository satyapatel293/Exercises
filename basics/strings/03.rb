name = "Roger"

puts "RoGeR".downcase == name.downcase
puts "DAVE".downcase == name.downcase  


# alternate method

puts name.casecmp("RoGeR") == 0
puts name.casecmp("DAVE") == 0 
