=begin
--------------------- P
input: string
output: fromated string within box of +--+ and |'s 
rules: 
  Explicit: 
    - input will alway fit in terminal winto 
    - outup will contain 
      +--+
      |  |
      |  |
      |  |
      +--+
    - 
  Implicit: 
    - 
    - 
--------------------- E
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
--------------------- D

--------------------- A
initalize empty box?
3 string +--+, |  |, | (string) | 
take string length 
add spaces in lines 2&4 and - in lines 1&5 at position 1  
=end


def print_in_box(string)
  edges = "+#{"-" * (string.length + 2)}+"
  middle = "|#{" " * (string.length + 2)}|"

  puts edges 
  puts middle
  puts "| #{string} |"
  puts middle
  puts edges
end 


# print_in_box('To boldly go where no one has gone before.')
# print_in_box('')




# modify to truncate messages larger than standar window size of 80 columns

def print_in_box(string)
  if string.size <= 76
    multiplier = string.size + 2 
  else 
    multiplier = 80 
  end 

  edges = "+#{"-" * multiplier}+"
  middle = "|#{" " * multiplier}|"
  
  puts edges
  puts middle
  puts "| #{string[0,76]} |"
  puts middle
  puts edges
end   



print_in_box('To boldly go where no one has gone before. To boldly go where no one has gone before.')
# print_in_box('')



#touch further explporation part 2 
=begin
--------------------- P
input: string
output: fromated string within box of +--+ and |'s 
rules: 
  Explicit: 
    - input will be parsed into multiple lines if greater than 76 characters 
    - outup will contain 
      +--+
      |  |
      |  |
      |  |
      +--+
    - 
  Implicit: 
    - multiple middle lines will all be same with of 80chars if input is longer than 76chars
    - 
--------------------- E
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
--------------------- D

--------------------- A
get length of string 
if string legnth <= 76 char perform orginal function 
add spaces equal to string legnth +2 to top and filler lines 
then output result 

if string is > 76 char 
  break string into 76 char bits 
  add filler to make final stirng 76 chars 
  print all string lines
=end


