=begin
--------------------- P
input: 2 sorted arrays
output: 1 new sorted array
rules: 
  Explicit: 
    - cannot use sort function
    - have to build new arr 1 element at a time 
  Implicit: 
    -
    - 
--------------------- E

--------------------- D

--------------------- A
create results array
idx1 
idx2

loop do 
  if arr1 == nil || arr1[id1] > arr2[idx2]
    push arr2[idx2] to results 
    idx2 += 1 
  else arr2 == nil || arr1[id1] < arr2[idx2]
    push arr1[idx1] to reuslts 
    idx1 += 1 
  end 

  break if idx1 >= array1 size && idx2 >= arr2size
end 

results 



=end 

def merge(arr1, arr2)
  results = []
  idx1 = 0  
  idx2 = 0 

  loop do 
    if arr1[idx1] == nil
      results << arr2[idx2] 
      idx2 += 1 
    elsif arr2[idx2] == nil
      results << arr1[idx1] 
      idx1 += 1 
    elsif arr1[idx1] > arr2[idx2]
      results << arr2[idx2] 
      idx2 += 1 
    elsif arr1[idx1] < arr2[idx2]
      results << arr1[idx1] 
      idx1 += 1 
    end 
    break if idx1 >= arr1.size && idx2 >= arr2.size
  end 

  results 

end 



# p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
# p merge([1, 1, 3], [2, 2])  == [1, 1, 2, 2, 3]
# p merge([], [1, 4, 5]) == [1, 4, 5]
# p merge([1, 4, 5], []) == [1, 4, 5]



#thier soultion and what I was initally going for 


def merge(arr1, arr2)
  idx2 = 0 
  results = []

  arr1.each do |value|
    while idx2 < arr2.size && arr2[idx2] < value
      results << arr2[idx2]
      idx2 += 1
    end
    results << value
  end 

  results.concat(arr2[idx2..-1]) 
end


p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2])  == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
p merge([1, 2], [1, 3, 6])