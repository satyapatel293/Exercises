=begin
--------------------- P
input: string
output: new string wiht eaach word captilized and all other letters lowercased
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
take string break into array
capitalize each word join string 
=end



def word_cap(string)
  string.split.map {|word| word.capitalize}.join(' ')
end 


puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'


# further exploration try without capitalize

def word_cap (string)
  words = string.split
  words.map! do |word|
    word[0].upcase + word[1..-1].downcase
  end
  words.join(' ')    
end



puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'


def word_cap (string)
  words = string.split
  words.each do |word|
    word[0] = word[0].upcase 
    word[1..-1] = word[1..-1].downcase
  end
  words.join(' ')    
end



puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
