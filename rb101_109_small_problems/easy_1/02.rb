=begin
P 

inputs int number 
outputs true if odd number

requirments 

take and interger arugment 
  take absuloute value of arg
  see if arg is odd 
  return 



=end 

def is_odd?(int)
  int.abs % 2 != 0 
end 
    
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true


=begin
#thier solution is 

def is_odd?(number)
  number % 2 == 1
end

rational is => modulo alway returns postive if the number on the right is positive 
and alway returns negative if the number on the right is negative 


modulo        	  remainder
5 mod 2 == 1	    5 rem 2 == 1
-5 mod 2 == 1	    -5 rem 2 == -1
5 mod -2 == -1	  5 rem -2 == 1
-5 mod -2 == -1	  -5 rem -2 == -1

=end 