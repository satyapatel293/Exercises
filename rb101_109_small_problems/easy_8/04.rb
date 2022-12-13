require 'pry'

def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end 
  result
end 



def substrings(string)
  result = []
  holder_string = string 
  counter = 0 

  loop do 
    result += leading_substrings(holder_string)
    counter += 1 
    holder_string = string[counter..- 1] 
    break if counter == string.size
  end 

  result
end 


p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]



#try to do using #upto like they did 

def substrings(string)
  result = []
  0.upto(string.size - 1) do |start_index|
    holder_string = string[start_index..-1]
    result.concat(leading_substrings(holder_string))
  end 
  result
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]