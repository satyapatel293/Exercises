=begin

Problem
input string 
output new string with the words reversed 
  rules 
    explict 
      retrun new string with words in reverse order
    implicit 
      empty string with only spaces returns '' empty string
      maintain capitlization of all words 
      words delemited by spaces 

Examples/Test
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

Data Strucutres
use array to assist with transfromation and splitting string up 

Algorithm
  take inital string and split up word into array seperated by spaces
  reverse the array 
  convert the reversed array to string seperated by spaces
  return the new string
Code
=end 



def reverse_sentence(sentance)
  sentance.split.reverse.join(' ')
end 

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''
