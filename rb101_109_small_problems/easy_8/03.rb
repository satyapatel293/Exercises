=begin
--------------------- P
input: string
output: array of substring that cainstand all possible options from start
rules: 
  Explicit: 
    - list should be ordered from shortest to longest
    - 
  Implicit: 
    -
    - 
--------------------- E

--------------------- D

--------------------- A
take original string 
loop spit into characters 
add charcters 1 at a time to filler word push word to array

=end


def leading_substrings(string)
  substrings = []
  string.chars.each_with_index do |char, index|
    substrings <<  string[0..index]
  end 
  substrings
end


p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']



# they use #upto method which might be good when dealing with just indexes 

def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index| #string size - 1 becuase going by index values (so example 1 going from 0..2 inclduding index 2 )
    result << string[0..index]
  end 
  result
end 