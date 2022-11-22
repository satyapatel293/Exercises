=begin
--------------------- P
input: array of integers
output: array of numbers where each number is the running total from input array
rules: 
  Explicit: 
    - running total is sum of all number up to and including currnet index
    - return new array
  Implicit: 
    - first index is same in both because running total is just first value
    - 
--------------------- E
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []
--------------------- D
array
--------------------- A
create plank arrray
itterate over current array
add current element to total 
push total to plank array
retrun plank array  
=end

def running_total(array)
  running_total = []
  current_count = 0

  array.each do |number|
    current_count += number
    running_total << current_count
  end

  running_total
end

p running_total([2, 5, 13]) #== [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) #== [14, 25, 32, 47, 67]
p running_total([3]) #== [3]
p running_total([]) == []


# using map would be more efficent because I am returning an array of the same length anyway

def running_total(array)
  sum = 0
  array.map {|num| sum += num }
end 



#taken further ----> save for later