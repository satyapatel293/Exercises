=begin
input: integer
output: sum of its digits 
rule 
  explcit 
    - sum all the digits 
    - return sum
    - dont use basic looping 
      constructucs (while, until, loop, and each)
  implicit 
    ignore "_" characters 

examples 

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

data strucutres



algorithms


=end 


def sum(number)
  number.to_s
          .split('')
          .map {|x| x.to_i}
          .sum 
end

# def sum(number)
#   number.digits.sum 
# end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45


