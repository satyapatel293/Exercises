=begin
--------------------- P
input: length of fib number
output: index of first fib number in sequence with length input
rules: 
  Explicit: 
    - arugment will alway be greater than 2
    - first fib number has index of 1
  Implicit: 
    -
    - 
--------------------- E
find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847
--------------------- D

--------------------- A
create fib sequence 1 at a time pushing into array
  1 + 1 + 2 + 3 + 5 + 8 
  sum = 2 
  1 is start of array 
  push sum to 1 


check length of digits of final input 
if length == input 
return index + 1 

=end

def find_fibonacci_index_by_length(length_of_fib)
  fibs = [1, 1]
  
  loop do 
  fibs << (fibs[-2] + fibs[-1])
  break if fibs.last.to_s.length >= length_of_fib
  end 

  fibs.size
end

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(3) == 12
p find_fibonacci_index_by_length(10) #== 45
p find_fibonacci_index_by_length(100) #== 476
p find_fibonacci_index_by_length(1000) #== 4782
p find_fibonacci_index_by_length(10000) #== 47847

#they took a simlair apporach 


def find_fibonacci_index_by_length(num_digits)
  first = 1 
  second = 1
  index = 2

  loop do 
    index += 1 
    fibonacci = first + second
    break if fibonacci.to_s.size >= num_digits

    first = second
    second = fibonacci
  end

  index
end