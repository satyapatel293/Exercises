=begin
--------------------- P
input: array of integers betweeb 0-19
output: sortay array of string values of the integers
rules: 
  Explicit: 
    - sort by string value 
    - 
  Implicit: 
    -
    - 
--------------------- E
alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
--------------------- D

--------------------- A
creat array holding string values 
for each postion place correct string
sort current array based off hash string
=end


ALPHABETSTRINGS = %w(zero, one, two, three, four, five, six, seven, eight, nine, 
                  ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, 
                  seventeen, eighteen, nineteen)

def alphabetic_number_sort(array)
  array.sort do |a, b | 
    ALPHABETSTRINGS[a] <=> ALPHABETSTRINGS[b]
  end 
end


p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]



#perform same thing using sort