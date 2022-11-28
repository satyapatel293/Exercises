=begin
--------------------- P
input: string w
output: new string with all duplicates reduced to single character
rules: 
  Explicit: 
    - consecvitve duplicates reduced to one letter
    - can't use string#squeeze
  Implicit: 
    -
    - 
--------------------- E

--------------------- D

--------------------- A
split string to array of characters 
initalize empty array
loop through array 
push value into newarry unless it equal last value of empty array
return new array
=end


def crunch(string)
  duplicates_removed = []
  string.each_char do |char|
    duplicates_removed << char unless char == duplicates_removed.last
  end
  duplicates_removed.join
end 

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

p 'NOOOOOOPE'

def crunch(string)
  counter = 0
  clean = ''
  until counter == string.length 
    if string[counter] != string[counter + 1]
      clean << string[counter]
    end
    counter += 1
  end
  clean
end


p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
p crunch('4444abcabccba') #== '4abcabcba'
p crunch('ggggggggggggggg') #== 'g'
p crunch('a') #== 'a'
p crunch('') #== ''