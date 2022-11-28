=begin
--------------------- P
input: string of word and non-alphabetic characters
output: new string with non-aphabetic characters replaced by spaces and consecutive spaces collapsed
rules: 
  Explicit: 
    - all words lower case
    - repalce nonaphabetic charcters with spaces
    - if more than character in row is nonaphnumeric such only return one space
  Implicit: 
    -
    - 
--------------------- E
cleanup("---what's my +*& line?") == ' what s my line '
--------------------- D
array
--------------------- A
split string up to words
replace all charcters thats are non alpha to ' ' 
remove duplicate spaces in each word 
join all strings with ' ' 
=end


def cleanup(string)
  string.gsub(/[^a-z]/, ' ').squeeze(" ") 
end 

p cleanup("---what's my +*& line?") == ' what s my line '


#their other solution was 

ALPHABET = ('a'..'z').to_a

def cleanup(text)
  clean_chars = []

  text.chars.each do |char|
    if ALPHABET.include?(char)
      clean_chars << char
    else
      clean_chars << ' ' unless clean_chars.last == ' '
    end
  end

  clean_chars.join
end