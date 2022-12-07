=begin
--------------------- P
input: array
output: nest array containing 2 halfs of first array if odd num array middle number goes to first half 
rules: 
  Explicit: 
    - 
    - 
  Implicit: 
    -
    - 
--------------------- E
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]
--------------------- D

--------------------- A
intialize nested array 
split array based on positon 
so if array is even split size/2 
if odd split 

  0 1 2 3 
  0 1 2 3 4 
  5 
=end

def halvsies(array)
  result_array = [[],[]]
  if array.size.odd? 
    result_array[0] << array.shift 
  end 

  array.each_with_index do |element, index|
    index < array.size/2 ? result_array[0] << element : result_array[1] << element 
  end
  result_array
end

#thier soultion is better because it doesn't have side effect of changing original array

def halvsies(array)
  middle = (array.size/2.0).ceil
  first = array.slice(0, middle)
  second = array.se(middle, array.size-middle)
  [first, second]
end



