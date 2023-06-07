=begin
--------------------- P
given a letter as an input create dimond shape 
from A to letter 
A is bottom and top 
letter is widest point 
should have equi distant from top to bottom 

want to make diamond with 1,3,5,7,9... n+2 every row 
will have length -2 spaces between 2 letters in row 
will have total (length - length)/2 spaces on each side 
will repeate pattern to target (will be total spaces)
will then reverse patern 
add /n to each line 
join patterns 

so middle row will be 
Explicit: 
    - 
    - 
  Implicit:  
    -
    - 
--------------------- E
Letter C 

  A
 B B
C   C
 B B
  A

--------------------- D
Diamond class 
will have one method that accepts upper case letter 

--------------------- A

create correct number of letters per row 
create correct spaces per row between letters 
creeat proper gap 



set counter to 1 
create holder array []
want to make range from A to letter 
itterate through range 
create conter X letter push to holder array

**counter = total length 

helper method 
replace length -2 chars with ''

center each string in total length 
append \n 

=end

class Diamond
  def self.make_diamond(letter)
    counter = 1
    upper_half = []
    ('A'..letter).each do |char|
      upper_half << (char * counter)
      counter += 2 unless char == letter
    end

    max_spaces = counter
    upper_half = add_spaces(upper_half, max_spaces)

    full_diamond = upper_half + upper_half[0...-1].reverse
    full_diamond.join("\n").concat("\n")
  end

  class << self
    private

    def add_spaces(rows, max_spaces)
      rows.map do |row|
        spaces = row.length > 1 ? row.length - 2 : 0
        spaces = ' ' * spaces
        row.sub(/\B\w+\B/, spaces).center(max_spaces)
      end
    end
  end
end
