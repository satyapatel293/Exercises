=begin
--------------------- P
input: 3 numbers int or float
output: symbol representing type of trianlge 
rules: 
  Explicit: 
    - returns :equilateral, :isosceles, :scalene, or :invalid 
    - equilateral All 3 sides are of equal length
    - isosceles 2 sides are of equal length, while the 3rd is different
    - scalene All 3 sides are of different length
    - to be a valid triangle
      - Sym of length of 2 shortest sides is greater than longest
      - all side must be greater than 0
  Implicit: 
    -
    - 
--------------------- E

--------------------- D

--------------------- A

take 3 inputs stores them as sides in array
sort array shortest to longest 
if any value is <= 0 return :invalid 

if all 3 sides are equal return :equilateral
if sum sides 0 and 1 is greater than side 3 
  if side.uniq == side   
  return :scalene
  else retunr 
    :isoceles
else return :invalid

=end
require 'pry'

def triangle(s1, s2, s3)
  sides = [s1, s2, s3].sort

  return :invalid if sides.any? {|s| s <= 0}
  return :equilateral if sides.all?(s3)
  if sides[0] + sides[1] > sides[2]
    sides.uniq == sides ? :scalene : :isosceles
  else 
    :invalid
  end 

end 


puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid



#their solution similar but uses case statment and diff apporch to invalid 

def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  largest_side = sides.max

  case
  when 2 * largest_side >= sides.reduce(:+), sides.include?(0)
    :invalid
  when side1 == side2 && side2 == side3
    :equilateral
  when side1 == side2 || side1 == side3 || side2 == side3
    :isosceles
  else
    :scalene
  end
end



# 2 * largest_side >= sides.reduce(:+) bascially means
# the smaller sides together are are great than longest
#  X+X+Y > Y+Y becuase X+X > Y 