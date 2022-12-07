def triangle(num)
  spaces = num - 1
  stars = 1 

  num.times do |line|
    puts (" " * spaces) + ('*' * stars)  
    spaces -= 1 
    stars += 1 
  end 
end 

triangle(5)
triangle(9)