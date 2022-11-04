#lsprinter2.rb


loop do 
  lines_string = nil
  lines = nil 
  loop do 
    puts ">> How many line do you want? Enter a number >=3: (Q to quit)"
    lines_string = gets.chomp.downcase
    break if lines_string == 'q'
    
    lines = lines_string.to_i
    break if lines >= 3
    
    puts "Thats not enough lines."
  end 

  break if lines_string =='q'
  
  while lines > 0 
    puts "Launch School is the best!"
    lines -= 1 
  end 
end 