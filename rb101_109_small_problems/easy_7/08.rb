=begin
--------------------- P
input: 2 arrays of integers same size
output: 1 array same size with each value proudct of other two at the index
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


def multiply_list(arr1, arr2)
  arr1.zip(arr2).map! { |first, second| first * second}
end


puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]



def multiply_list(arr1, arr2)
  arr1.zip(arr2).map! { |nums| nums.inject(:*) } #inject can make code even shorter
end
