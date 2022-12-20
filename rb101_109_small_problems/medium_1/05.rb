=begin
--------------------- P
input: odd int
output: 4 pointed dimond 
rules: 
  Explicit: 
    - diamond is n high and n wide at middle points
    - diamond is centered made of * 
    - each row is 2 more then pior until middle then 2 less 
    - always odd input 
    - 
  Implicit: 
    -
    - 
--------------------- E

--------------------- D

--------------------- A
create a line of *'s n long 
replace ends with spaces 
add above and below 
repeat 

display table 
=end
require 'pry'

def add_lines(array, line)
  array.prepend(line)
  array.append(line)
end

def diamond(n)
  center_line = ('*' * n)
  result = [center_line]
  
  first = 1
  last = -2 

  loop do 
    spacer = ' ' * first
    break if first > n/2
    new_line =  "#{spacer}#{center_line[first..last]}#{spacer}"
    add_lines(result, new_line)
    first += 1 
    last -= 1 
  end 

  result.each {|line| puts line}
end 

# diamond(1)
# diamond(3)
# diamond(9)



#their solution uses #center which would make it easier to keep the rows centered 

def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end



#further Exploration 

def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  if number_of_stars > 1 
    stars[1..-2] = ' ' * (number_of_stars - 2)
  end 
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end
diamond(1)
diamond(5)
diamond(9)