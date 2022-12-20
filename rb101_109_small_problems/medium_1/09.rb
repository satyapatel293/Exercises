

require 'pry'


def fibonacci(n)
  first = 1 
  second = 1 
  fibonacci = 1
  counter = 2 

  if n > 2
    loop do 
      break if counter >= n
      fibonacci = first + second
      first = second 
      second = fibonacci
      counter += 1
    end 
  end 
  fibonacci
end 

p fibonacci(3)
p fibonacci(4) #== 6765
p fibonacci(5)
p fibonacci(20)
p fibonacci(100) #== 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501


def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do 
    first, last = [last, first + last]
  end 

  last 
end 
