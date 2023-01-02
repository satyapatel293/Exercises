=begin
--------------------- P
input: txt file 
output: longes stentance in file and length of stentance 
rules: 
  Explicit: 
    - sentances seperated . ? !
    - anythinng seperated by spaces is a word
  Implicit: 
    -
    - 
--------------------- E

--------------------- D

--------------------- A
input is txt file 
so need program to read this file first 
will set a varible to contain contents of this file 
then split the contents into sentances based off .?!
then store all those 
then sort all those base off length of substring(seperated by spaces)
then take the longest substring 
retrun it with its length 
=end

text = IO.read('pg84.txt')

sentances = text.split(/\.|\?|\!/)

sentances.sort_by! do |sentance|
  sentance.split.length
end 

puts sentances[-1]
puts sentances[-1].split.length


#thier soultion uses max by

text = File.read('pg84.txt')
sentances = text.split(/\.|\?|\!/)
longest_sentance = sentances.max_by { |sentance| sentance.split.size}
longest_sentance = longest_sentance.strip
longest_sentance_length = longest_sentance.split.size

puts longest_sentance
puts "The longest sentance is #{longest_sentance_length} words."



# further exploration 

text = File.read('pg84.txt')
paras = text.split(/\r\n\r\n/)
largest_para = paras.max_by { |sentances| sentances.split.size}
largest_para = largest_para.strip
largest_para_length = largest_para.split.size

puts largest_para
puts "The longest paragraph is #{largest_para_length} words."

#longest word 

text = File.read('pg84.txt')
words = text.split
longest_word = words.max_by { |word| word.size}
word_count = longest_word.size 

puts "#{longest_word} is the longest word at #{word_count} characters. "

