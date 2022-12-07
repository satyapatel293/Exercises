=begin
--------------------- P
input: 2 arrays of same length
output: 1 array of alternating element from each array
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
create blank array
loop through first array with index
push 1 element from first array
push 1 element from second arry

return new array

=end


def interleave(array1, array2)
  result_array = []
  array1.each_with_index do |element, index|
    result_array << element
    result_array << array2[index]
  end
  result_array
end




puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']



#further expoloration can you perfrom this with Array#zip

def interleave(array1, array2)
  array1.zip(array2).flatten
end


p interleave([1, 2, 3], ['a', 'b', 'c'])

