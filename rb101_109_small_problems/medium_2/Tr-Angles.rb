=begin
--------------------- P
input: 3 ints representing angles
output: symbol representing type of trianlge 
rules: 
  Explicit: 
    - returns :right, :acute, :obtuse, or :invalid 
    - right One angle of the triangle is a right angle (90 degrees)
    - acute All 3 angles of the triangle are less than 90 degrees
    - obtuse One angle is greater than 90 degrees.
    - to be a valid triangle
      - Sum of angles == 180 
      - all ang must be greater than 0
  Implicit: 
    -
    - 
--------------------- E

--------------------- D

--------------------- A

take 3 inputs stores them as angs in array

if any value is == 0 or sum of all angles != 180 return :invalid 

if any angle ==90 return right
  if any angle > 90 reutrn obture
  else return acute 

=end

def triangle(ang1, ang2, ang3)
  angs = [ang1, ang2, ang3]

  case
  when angs.reduce(:+) != 180, angs.include?(0)
    :invalid
  when angs.include?(90)
    :right
  when angs.any? {|angle| angle > 90 }
    :obtuse
  else
    :acute
  end
end

puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid