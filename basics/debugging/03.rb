def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp

puts "The result is #{multiply_by_five(number)}!"


# will recivce '55555' because the string is being multipled 
# gets.chomp.to_i should fix issues  