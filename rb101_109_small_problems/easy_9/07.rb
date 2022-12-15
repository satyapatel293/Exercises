=begin
--------------------- P
input: two word string
output: reverses string with , seperating
rules: 
  Explicit: 
    - 
    - 
  Implicit: 
    -
    - 
--------------------- E

--------------------- D

--------------------- A

=end

def swap_name(name)
  name.split.reverse.join(', ')
end 

swap_name('Joe Roberts') == 'Roberts, Joe'