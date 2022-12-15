=begin
--------------------- P
input: string
output: boolean true or false all aplhabestic chars are uppercase
rules: 
  Explicit: 
    - do not count nona Alpha characters 
    - 
  Implicit: 
    - retrun true is string empy of alphabetic chars 
    - 
--------------------- E

--------------------- D

--------------------- A
check each charcter is it's aplha then check is uppercase 
if not break loop and return false 
else return true 
=end

LETTERS = ('A'..'Z').to_a

def uppercase?(string)
  string.each_char do |char|
    if LETTERS.include?(char.upcase)
      if LETTERS.include?(char)
        next
      else
        return false
      end 
    end 
  end 

  true
end 


uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

#seems not consise ohhh read the prompt just check if the string == the capitalize version of it 


def uppercase?(string)
  string == string.upcase
end 
