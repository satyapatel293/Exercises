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

def center_line(n)
  '*' * n 
end 

def add_lines(array, line)
  array.prepend(line)
  array.append(line)
end

def diamond(n)
  center_line = center_line(n)
  result = [center_line]
  
  first = 1
  last = -2 
  spacer = ' ' * first

  loop do 
    break if first > n/2
    new_line =  "#{spacer}#{center_line[first..last]}#{spacer}"
    add_lines(result, new_line)
    first += 1 
    last -= 1 
  end 

  result.each {|line| puts line}
end 

diamond(1)
diamond(3)
diamond(9)