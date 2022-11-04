#opposites.rb
#nest loop not very clear and readable or effective also my scopes are all over the place looks at alternate 

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

loop do 
  input1_string = nil 
  input2_string = nil

  loop do 
    puts ">> Please enter a postive or negative integer:"
    input1_string = gets.chomp
    break if valid_number?(input1_string)
    puts ">> invalid input. Only non-zero integers are allowed."
  end  

  loop do  
    puts ">> Please enter a postive or negative integer:"
    input2_string = gets.chomp
    break if valid_number?(input2_string)
    puts ">> invalid input. Only non-zero integers are allowed."
  end 

  int1 = input1_string.to_i
  int2 = input2_string.to_i 

  if int1 > 0 && int2 > 0  || int1 < 0 && int2 < 0 
    puts ">> Sorry. One integer must be positive, one must be negative." \
    ">> Please start over."
    next
  end

  puts "#{int1} + #{int2} = #{int1 + int2}"
  break
end