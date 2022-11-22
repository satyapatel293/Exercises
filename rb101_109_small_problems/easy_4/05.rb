=begin
--------------------- P
input: integer
output: sum of all multiples of 3 and 5 up to and including that integer
rules: 
  Explicit: 
    - numbers between 1 and number are counted
    - include number 
  Implicit: 
    - if number is divisible by both 3 and 5 only count it once
    - 
--------------------- E
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168
--------------------- D

--------------------- A
take input number 
create empty array
check all numbers between input 1 and input number are divisible by 3 
      push all number to arry
check all number between 1 and inpu divisible by 5 
      push all numbers to array
delete dublicates form array
sum all numbers in array
=end


def multisum(n)
  all_multiples = []
  (1..n).to_a.each do |element| 
    all_multiples << element if element % 3 == 0 || element % 5 == 0 
  end
  all_multiples.inject(:+)
end 