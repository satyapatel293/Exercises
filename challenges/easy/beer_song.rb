=begin
--------------------- P
write out the 99 bottles of beer song 

class methods to get 
 - single line 
 - range of lines 
 - whole song 

 each verse is 2 lines 
 there is a empty space between verses 
  - verse 99..3 same pattern 
  - verse 2 change '1 bottle' of beer on the wall 
  - verse 1 change '1 bottle of beer on the wall 
  - verse 0 uniq string 
 --------------------- E
each verse retruns the verse and next line 
range retruns starting verse to ending ver + next line 
lyrics returns whole thing 


--------------------- D
BeerSong class 
# 2 methods
# verse which gives lines 
# lyrics which returns whole file 

# store song in file? 
# read and rewind file for each 
--------------------- A
store lyrics in file 

# verse takes two parameters 
# starting number and ending number 
# ending number defualts to nil 
# if ending number is nil only read current line 

# file open 
# set line to lineno=



# lyrics   
# open file
# readlines and join the array  
# close file 
# read 


store 4 options in hash 
  - verse 99..3 same pattern 
  - verse 2 change '1 bottle' of beer on the wall 
  - verse 1 change '1 bottle of beer on the wall 
  - verse 0 uniq string 

verse creates 
range end to start 
change to array of reverse range 

set holder string ''
itterate through array 
push current position to string
push \n unless postion is -1 of array 


position converter 
  if position is 99..3 
    {p} bottles of beer on the wall, {p} bottles of beer.
    Take one down and pass it around, {p-1} bottles of beer on the wall.

  if position is 2
    {p} bottles of beer on the wall, {p} bottles of beer.
    Take one down and pass it around, {p-1} bottle of beer on the wall.

  if position is 1 
    if position is 99..3 
    {p} bottle of beer on the wall, {p} bottle of beer.
    Take one down and pass it around, no more bottles of beer on the wall.

    else 
      No more bottles of beer on the wall, no more bottles of beer.
      Go to the store and buy some more, 99 bottles of beer on the wall.01
=end


class BeerSong
  def self.lyrics
    verses(99, 0)
  end 

  def self.verses(first, last)
    result = ''
    first.downto(last) do |num| 
      result << verse(num)
      result << "\n" unless num == last
    end 

    result
  end 

  def self.verse(number)
    case number
    when 3..99 
      "#{number} bottles of beer on the wall, #{number} bottles of beer.\n" \
      "Take one down and pass it around, #{number -1} bottles of beer on the wall.\n"
    when 2
      "2 bottles of beer on the wall, 2 bottles of beer.\n" \
      "Take one down and pass it around, 1 bottle of beer on the wall.\n"
    when 1
      "1 bottle of beer on the wall, 1 bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    else
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
  end 
end 


p BeerSong.verse(99)
