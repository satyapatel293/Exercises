=begin
--------------------- P
input: 2 arrays
output: new array of inputs combined without duplicate values
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
add 2 arrrys together 
remove duplicates


=end


def merge (arr1, arr2)
  arr1 | arr2
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

#further exploration

def merge(arr1, arr2)
  (arr1 + arr2).uniq
end 

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]