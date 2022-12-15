=begin
--------------------- P
input: array
output: new array is frist element moved to end 
rules: 
  Explicit: 
    - do not use #rotate or #rotate!
    - 
  Implicit: 
    -
    - 
--------------------- E

--------------------- D

--------------------- A
make copy of array 
remove first element and push to end of copy 
return copy 

=end


def rotate_array(array)
  copy = array.dup
  first = copy.shift
  copy.push(first)
end 

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true




# their 1 liner
def rotate_array(array)
  array[1..-1] + [array[0]]
end




#furhter exploration

def rotate_string(string)
  rotate_array(string.chars).join
end 

def rotate_int(int)
  rotate_string(int.to_s).to_i
end 