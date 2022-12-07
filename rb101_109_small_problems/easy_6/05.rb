def reverse(array)
  cloned_array = array.clone
  first_index = 0 
  last_index = -1 

  while first_index < cloned_array.size/2
  cloned_array[first_index], cloned_array[last_index] = cloned_array[last_index], cloned_array[first_index]
  
  first_index += 1
  last_index -= 1
  end 

  cloned_array
end


reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true


list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true



#### SNEAKY QUESTION SOLUTION 
# Can use reverse_each

def reverse(array)
  results_array = []
  array.reverse_each { |element| results_array << element}
  results_array
end 



#further exploration
def reverse(array)
  array.each_with_object([]) { |element, array|  array.prepend(element)}
end

def revers(array)
  array.inject