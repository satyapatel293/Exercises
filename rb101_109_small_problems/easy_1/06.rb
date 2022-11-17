=begin

Problem
input string 
output new string with each word that is 5 or more characters reversed 
  rules 
    explict 
      if word is >= 5 char reverse the word
      spaces to only be inlcuded when more than one word is present

    implicit 
      empty string with only spaces returns '' empty string
      maintain capitlization of all words 
      words delemited by spaces 

Examples/Test
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

Data Strucutres
use array to assist with transfromation and splitting string up 

Algorithm
  take inital string and split up word into array seperated by spaces
  check each the strings in the array 
  if string is greater than or equal to 5 char reverse the string 
  else return the orginal string
  convert the array to string seperated by spaces
  return the new string
Code
=end 

def reverse_words(string)
  string.split.map { |word| word.length >= 5 ? word.reverse : word}.join(' ')
end 

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS


# solution by LS 


def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.length >= 5
    words << word
  end 

  words.join(' ')
end 

# this seems eaiser to follow than my example but in the end its the same result 
# they used each here so they did has to have something to hold the new words 
# put them in the words array as a holder which is returned afterwards
