# Sort an array of passed in values using merge sort. 
=begin
--------------------- P
input: array
output: sorted array
rules: 
  Explicit: 
    - need to use merge sort algo 
    - 
  Implicit: 
    -
    - 
--------------------- E

--------------------- D

--------------------- A
i want to split array into arrays until they only contain 1 element 


create split function (input is array)
if array size is 1 return array 
half point = index of middle size/2
1h = arr[0...half]
2h = arr[half..-1]
return [split[1],split[2h]]


take my split array 
and merge all subarray using mergesorteed 

=end


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

def merge_sort (arr)
  return arr if arr.size == 1 
  half = arr.size/2
  first_half = arr[0...half]
  second_half = arr[half..-1]

  first_half = merge_sort(first_half)
  second_half =  merge_sort(second_half)

  merge(first_half, second_half)
end 

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]



#further exploration perform this nonrecursivley 
#this is diffcult to understand come back to this 