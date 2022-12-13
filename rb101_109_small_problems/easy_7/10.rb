=begin
--------------------- P
input: 
output: 
rules: 
  Explicit: 
    - 
    - 
  Implicit: 
    -
    - 
--------------------- E

--------------------- D

--------------------- A
=end


def penultimate(string)
  string.split[-2]
end


puts penultimate('last word') == 'last'
puts penultimate('Launch School is great!') == 'is'


#further exploration
# edge case is even number of words would take the 


def middle_word(phrase)
  middle = phrase.size / 2.0
  if phrase.size.odd?
    phrase.split[middle.floor]
  else
    phrase.split[middle]
end


