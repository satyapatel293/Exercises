array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2


=begin
Moe 
Larry 
CURLY 
SHEMP 
Harpo 
CHICO 
Groucho 
Zeppo

this is because the values whihc array2 are referncing are being mutated in line 4 

=end 

