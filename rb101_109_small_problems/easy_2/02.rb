=begin
--------------------- P
input: ask for length and with of room in meters
output: area in square feet and square meets 

rules: 
  Explicit: 
    - area of room returned 
    - no need to validate inputs
  Implicit: 
    - input comes as string
    - outputs are new strings 
    - convert square meet to square feet
--------------------- E
Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).
--------------------- D

--------------------- A
inputs taken as number strings
converted to integers 
take square meters of room
take square feet of room 
return both 

=end

SQMETERS_TO_SQFEET = 10.7639

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f
puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

area_sq_m = (length * width).round(2)
area_sq_ft = (area_sq_m * SQMETERS_TO_SQFEET).round(2)

puts "The area of the room is #{area_sq_m} square meters (#{area_sq_ft} square feet)."


##return to this and do the further exploration

