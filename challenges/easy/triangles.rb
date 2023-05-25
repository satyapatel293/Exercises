=begin
--------------------- P
Problem: Determine if a triangle object is equilateral, isosceles, or scalene
input: 
  - three nums which represent sides of a triangle
output: 
  - string (equilateral, isosceles, or scalene) or arugment error 

rules: 
  Explicit: 
    - triangles must have 3 sides all > 0 else invalid triangle* 
    - sum of any 2 sides must be greater than 3rd else invalid triangle*  
    - equilateral: 3 sides all same length 
    - isosceles: 2 sides with same length 3rd different
    - scalene: all 3 sides different lengths
  Implicit: 
    - raise arugment error with invalid triangle*
      - needs a #valid_triangle method 
    - #kind method which check kind of triangle
--------------------- E
1,1,1 == equalaterial 
2,2,3 == iscoceles 
5,3,6 == scalene 
--------------------- D
class triangle 
  - @side1 - 3 instance variables to hold sides 
  - sides array to hold all sides
--------------------- A
 - needs a #valid_triangle method 
    - raise arugment error with invalid triangle*
    - checks the three sides if any is <= 0 throw error 
    - checks to see if all combos of 2 sides greater than 3rd side
      - 1 + 2 > 3 
      - 2 + 3 > 1 
      - 3 + 1 > 2 
- #kind method which check kind of triangle
  itterate through sides array 
  - equaleral if all? == sides[1]
  - scalens if all? sides.count current side == 1 
  - isocoles if any sides.count current side == 2 
=end


# class Triangle
#   attr_reader :sides
#   def initialize(s1,s2,s3)
#     @sides = [s1,s2,s3]
#     valid_triangle
#   end 

#   def kind
#     return 'equilateral' if sides.all?(sides[1])
#     return 'isosceles' if sides.any? {|side| sides.count(side) == 2}
#     return 'scalene' if sides.all? {|side| sides.count(side) == 1}
#   end 

#   private

#   def valid_triangle
#     raise ArgumentError unless sides.all? {|side| side > 0}
#     raise ArgumentError unless (sides[0] + sides[1]) > sides[2]
#     raise ArgumentError unless (sides[1] + sides[2]) > sides[0]
#     raise ArgumentError unless (sides[2] + sides[0]) > sides[1]
#   end 
# end 



# Thier soultion 

# class Triangle
#   attr_reader :sides

#   def initialize(side1, side2, side3)
#     @sides = [side1, side2, side3]
#     raise ArgumentError.new "Invalid triangle lengths" unless valid?
#   end

#   def kind
#     if sides.uniq.size == 1
#       'equilateral'
#     elsif sides.uniq.size == 2
#       'isosceles'
#     else
#       'scalene'
#     end
#   end

#   private

#   def valid?
#     sides.min > 0 &&
#     sides[0] + sides[1] > sides[2] &&
#     sides[1] + sides[2] > sides[0] &&
#     sides[0] + sides[2] > sides[1]
#   end
# end


class Triangle
  def initialize(*sides)
    @sides = sides
    raise ArgumentError if not_valid_triangle? 
  end

  def not_valid_triangle?
    @sides.sort[0..1].sum <= @sides.sort[-1]
  end

  def kind
    case @sides.uniq.size
    when 1 then 'equilateral'
    when 2 then 'isosceles'
    else 'scalene'
    end
  end
end