=begin
--------------------- P
input: 
output: 
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
created nested array of all pair
find product of all pairs 
sort array
=end

def multiply_all_pairs(arr1, arr2)
  pairs = arr1.product(arr2)
  products = pairs.map {|nums| nums.inject(:*)}
  products.sort
end





puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]