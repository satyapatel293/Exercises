=begin
--------------------- P
write a program which can tell is a number is 
perfect - the sum of thier divsors == number
abudent - the sum of thier divsors > number
deficent - the sum of thier divosrs < number

rules: 
  Explicit: 
    - divsors are all number which can be evenly divided into the number
    with no remainder 
    - the number is not a divsor of itself 
    - Aliquot sum == the sum of the divsors 
    - primes all are deficent
    - only chekcing positve numbers (for looking for postive divsors)
  Implicit: 
    - 
    - 

input: 
  - postive integer
output: 
  - string abundant, perfect, or deficient

--------------------- E
6 is a perfect number since its divisors are 1, 2, and 3, and 1 + 2 + 3 = 6.

28 is a perfect number since its divisors are 1, 2, 4, 7, and 14 and 1 + 2 + 4 + 7 + 14 = 28.

15 is a deficient number since its divisors are 1, 3, and 5 and 1 + 3 + 5 = 9 which is less than 15.

24 is an abundant number since its divisors are 1, 2, 3, 4, 6, 8, and 12 and 1 + 2 + 3 + 4 + 6 + 8 + 12 = 36 which is greater than 24.

Prime numbers 7, 13, etc. are always deficient since their only divisor is 1.
--------------------- D
perfect number class 

  classify class method 
  takes one int
      throws error is negative number
    integers array holding postive divsors 

--------------------- A
raise StandardError.new if num <= 0
find all divsors of number 
array from 1 up to including num/2 select only 
  number % current == 0

sum the array 

sum all divsors
case sum 
when num then perfect 
when > num then 

if sum == num 
  perfect 
if sum > num 
  abundent 
else
  deficent 

=end


class PerfectNumber

  def self.classify(num)
    raise StandardError.new if num <= 0 
    aliquot_sum = (1...num).select {|value| num % value == 0 }.sum
 
    if aliquot_sum == num 
     'perfect'
    elsif aliquot_sum > num 
     'abundant'
    else 
      'deficient'
    end
  end 
end 

p PerfectNumber.classify(13)
p PerfectNumber.classify(28)
p PerfectNumber.classify(12)


# Thier soultion uses helper method and werid syntax

class PerfectNumber
  def self.classify(number)
    raise StandardError.new if number < 1
    sum = sum_of_factors(number)

    if sum == number
      'perfect'
    elsif sum > number
      'abundant'
    else
      'deficient'
    end
  end

  class << self
    private

    def sum_of_factors(number)
      (1...number).select do |possible_divisor|
        number % possible_divisor == 0
      end.sum
    end
  end
end