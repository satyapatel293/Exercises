=begin
--------------------- P
input: string 
output: same string with number word converted to digits
rules: 
  Explicit: 
    - same string returned 
    - 
  Implicit: 
    -
    - 
--------------------- E

--------------------- D

--------------------- A
hash of digits words and digits 
gsub! each key with value 
return string
=end


def word_to_digit(string)
  digits = { 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 'five' => '5', 
    'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9', 'zero' => '0'}
  string.gsub!(/one|two|three|four|five|six|seven|eight|nine|zero/i, digits )
end 


p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'

#MINE IS WRONG it would change 'tone' to 't1'


DIGITS_HASH = { 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 'five' => '5', 
  'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9', 'zero' => '0'}

def word_to_digit(string)
  DIGITS_HASH.each do |word|
    string.gsub!(/\b#{word}\b/, DIGITS_HASH[word])
  end 
  string
end 



#further exploration replace capatalized and uppercases words
def word_to_digit(string)
  DIGITS_HASH.each do |word|
    string.gsub!(/\b#{word}\b/i, DIGITS_HASH[word])
  end 
  string
end 

# remove spaces between 2 consecutive digits 
def word_to_digit(string)
  DIGITS_HASH.each do |word|
    string.gsub!(/\b#{word} \b/, DIGITS_HASH[word])
  end 
  string
end 

def word_to_digit(string)
  DIGITS_HASH.each do |word|
    string.gsub!(/\b#{word} \b/, DIGITS_HASH[word])
  end 
  string
end 

def word_to_digit(string)
  DIGITS_HASH.each do |word|
    string.gsub!(/\b#{word} \b/, DIGITS_HASH[word])
    numbers = string.sub(/[^\d]/, '').join
    numbers.format()
  end 
  string
end 