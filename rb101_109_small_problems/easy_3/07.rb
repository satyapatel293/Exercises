def oddities(array)
  new_array = [ ]
  array.each_with_index { |element, index| new_array << element if index.even?}
  new_array
end 

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
puts oddities([1, 2, 3, 4, 1]) == [1, 3, 1]


#other ways of doing this 

#simple loop 

def oddities(array)
  odd_array = []
  counter = 0 
  while counter < array.length
    odd_array << array[counter]
    counter +=2 
  end 
  odd_array
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
puts oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

def oddities(array)
  odd_array = []
  counter = 0 
  while counter < array.length
    odd_array << array[counter] if counter.even?
    counter += 1 
  end 
  odd_array
end