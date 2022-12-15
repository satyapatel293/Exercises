=begin
--------------------- P
input: count and starting integer of count
output: array of length count starting at start int which each value being a multiple of the start int
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
array is empty 
from 1 to counter 

=end

def sequence(total, value)
  result = Array.new(total, value)
  counter = 1 
  result.map do |num|
    current_place = num * counter 
    counter += 1 
    current_place
  end 
end 


def sequence(count, first)
  (1..count).map { |value| first * value }
end 


#or maybe more clear their soultion 

def sequence(count, first)
  sequence = []
  number = first 

  count.times do
    sequence << number
    number += first
  end 

  sequence
end 