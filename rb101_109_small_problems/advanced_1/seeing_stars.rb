=begin
--------------------- P
input: odd int n where n >= 7
output: 8pointed star made of * 
rules: 
  Explicit: 
    - output size will be n x n  
    - center row will be n *'s long 
    - every other row will only have 3 *'s centered im the row 
      - each row away from center will have progressivly more 
      spaces between stars starting from 0 up to (n-3)/2 
  Implicit: 
    - 
    - 
--------------------- E

--------------------- D
array will be easiest 
--------------------- A

general 
star array will contain  -> create center row of n *'s 
helper method to create other rows
  will create string * * * with `x` spaces between them 
  will center the string with n total spaces 
  will return string  
end 

overall will push center to array
n/2 times will perforom (0,1, upto n/2 - 1) rows 
  in loop append and prepend row to star array 
end

puts star array 



=end

def new_row(row, total_rows)
  spaces = ' ' * row 
  line = "*#{spaces}*#{spaces}*"
  line.center(total_rows)
end 


def star(n)
  stars = ["#{'*' * n}"]

  (n/2).times do |row|
    stars.prepend new_row(row, n)
    stars.push new_row(row, n)
  end 

  puts stars
end

star(13)


# My soulution works but thiers is easier to read becusae they are not 
#relying on the #times method to iterate from 0 to the halfway point 

def print_row(grid_size, distance_from_center)
  number_of_spaces = distance_from_center - 1
  spaces = " " * number_of_spaces 
  output = Array.new(3,"*").join(spaces)
  puts output.center(grid_size)
end 

def star(grid_size)
  max_distance = (grid_size - 1)/2

  max_distance.downto(1) {|distance| print_row(grid_size, distance)}
  puts "*" * grid_size
  1.upto(max_distance) {|distance| print_row(grid_size, distance)}

end

star(9)



# further exploration 