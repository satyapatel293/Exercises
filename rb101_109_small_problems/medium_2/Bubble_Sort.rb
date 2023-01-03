=begin
--------------------- P
input: array of at least 2 elements
output: same array sorted 
rules: 
  Explicit: 
    - use bubble sort algorithm 
      -  itterate through array comparing consevtive elements
      - if first element in pair is greater then secnond swap if not do nothing
      - Move to next element pair 
      - itterate through array until if no swaps made (which means its sorted)
      - 
  Implicit: 
    -
    - 
--------------------- E
array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
--------------------- D

--------------------- A
loop do 
swapped = false

itterate through array (array length-1 times) to second to last element 
  frist = 0 
  second = 1 

  if array[first] > array [second]
    array [second] array[first] = array[first] array [second]
    swaped = true  
  end
  first += 1 
  second += 1 
exit itteration

if swapped == false 
break out of loop 

return arrray 
=end


def bubble_sort!(array)
  loop do 
    swapped = false   
    counter = array.length - 1   
    first = 0
    second = 1 
    
    while counter > 0 
      if array[first] > array [second]
        array [second], array[first] = [array[first], array [second]]
        swapped = true  
      end
      first += 1 
      second += 1 
      counter -= 1
    end 
    
    break if swapped == false
    end 
  array
end 

array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]



#thier soultion is more consices 


def bubble_sort!(array)
  loop do 
    swapped = false
    1.upto(array.size - 1) do |index|
      next if array[index -1] <= array[index]
      array[index -1], array[index] = [array[index], array[index - 1]]
      swapped = true
    end 

    break unless swapped
  end
end



#further exploration optomized solution 

def bubble_sort!(array)
  n = array.size - 1
  loop do 
    swapped = false
    1.upto(n) do |index|
      next if array[index -1] <= array[index]
      array[index -1], array[index] = [array[index], array[index - 1]]
      swapped = true
    end 

    n -= 1
    break unless swapped
  end
end

# this is very cool, basically every round the largest number will 
# be placed at the end of the array 
# then the second largest will be next round 
# then the third ect... so you can decreased the length of search every round 
# by 1 element 