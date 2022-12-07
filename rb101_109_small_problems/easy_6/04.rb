=begin
--------------------- P
input: array
output: same array with elements reverse
rules: 
  Explicit: 
    - cannot use reverse! or reverse
    - only need to reverse the positions of the elements not the actaull elemenrts themselfs
  Implicit: 
    -
    - 
--------------------- E

--------------------- D

--------------------- A
array copy is made 
counter initalize to -1 
array input is iterated over with destructive map method 
take last digit of copy and place in first position
then minus to counter 
return orignal array
=end


def reverse_list(array)
  copy = array.clone
  counter = 0 

  array.map! do |element|
    counter -= 1 
    copy[counter]
  end 

  array
end 



#performed with parralle assigment 

def reverse_this(array)
  first_index = 1
  last_index = -1 

  while first_index < array.size/2
    array[first_index], array[last_index] = array[last_index], array[first_index]
    first_index += 1 
    last_index -= 1
  end 

  array
end

