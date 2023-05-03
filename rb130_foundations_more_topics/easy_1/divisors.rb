require 'prime'

def divisors(num)
  result = []
  1.upto(num) do |factor|
    result << factor if num % factor == 0 
  end 

  result
end 


# p divisors(1) == [1]
# p divisors(7) == [1, 7]
# p divisors(12) == [1, 2, 3, 4, 6, 12]
# p divisors(98) == [1, 2, 7, 14, 49, 98]
# p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute

## Remeber Enumerable#select returns array and that Integer#upto returns an enumerator if no block given
## Can use select on enumerator objects 

def divisors(num)
  1.upto(num).select do |factor|
      num % factor == 0 
  end 
end 


# p divisors(1) == [1]
# p divisors(7) == [1, 7]
# p divisors(12) == [1, 2, 3, 4, 6, 12]
# p divisors(98) == [1, 2, 7, 14, 49, 98]
# p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute


###further exploration 
# optomize this so it's not a brute force solution
def divisors(num)
  first_half = (1..Integer.sqrt(num).round).select { |divisor| num % divisor == 0 }
  second_half = first_half.map { |divisor| num / divisor }.reverse
  (first_half + second_half).uniq
end

p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute
p divisors(999962000357) == [1, 999979, 999983, 999962000357]


def divisors(num)
  result = []
  limit = Integer.sqrt(num)
  1.upto(limit).each do |divident|
    value = num.divmod(divident)
    if value[1] == 0 
      result << divident
      result << value[0]
    end 
  end 

  result.sort.uniq
end 


p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) #== [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute
p divisors(999962000357) == [1, 999979, 999983, 999962000357]
#dividing a number that is evenly divisible by the given number gives you the quotient (which will also be evenly divisible by the number. We reduce the numbers we need to test, by getting the square root of the given number (turned into an integer). Anything above that that is evenly divisible by the number will be a quotient of an earlier tested number. We invoke uniq on the array, on the chance the input number is a perfect square (which would result in two of the same numbers getting pushed into the return array), then sort so the returned array matches the expected output.