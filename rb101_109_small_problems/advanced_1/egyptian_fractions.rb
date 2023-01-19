=begin
--------------------- P
input: 2 integers which represent a rational number greater than 1
output: array of ints (which represents the denominators of the egyptian fraction that make up the input)
rules: 
  Explicit: 
    - egyptions fractions consist of unit fractions (numerator is 1) that are all distinct 
    - 
  Implicit: 
    - if the number is already a unit fraction return that number 
    - 
--------------------- E

--------------------- D

--------------------- A

set current input as goal in rational number 
set total to 0
result_arry = []
set current_dem to 1 


loop until total == goal 
      if 1/current dem + total <= goal 
        total += 1/currentdem
        result_arry << currentdem
      end 

result array 

=end


def egyptian(num)
  total = 0
  result = []
  denominator = 1 

  loop do 
    break if total == num
    value =  Rational(1, denominator)
    if value + total <= num 
      total += value 
      result << denominator
    end 
    denominator += 1 
  end 

  result
end

def unegyptian(arr)
  total = 0 
  arr.each do |dem|
    total += Rational(1, dem)
  end 

  total 
end 



# p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
# p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
# p egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]


# p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
# p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
# p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
# p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
# p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
# p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
# p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
# p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)





# Thier soultion counts down an just becuase you cannot mutate rational so just reassing the value 

def egyptian(target_value)
  denominators = []
  unit_denominator = 1 

  until target_value == 0 
    unit_fraction = Rational(1, unit_denominator)
    if unit_fraction <= target_value
      target_value -= unit_fraction
      denominators << unit_denominator
    end 
    unit_denominator += 1 
  end 

  denominators
end 


def unegyptian(denominators)
  denominators.inject(0) do |accum, denominator|   # need to add the inital object as 0 in order to keep first itteration modifiting first element of array into a rational number~~!!
    accum + Rational(1, denominator)
  end 
end 


p unegyptian(egyptian(Rational(1, 2))) #== Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) #== Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) #== Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) #== Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) #== Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) #== Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) #== Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) #== Rational(3, 1)