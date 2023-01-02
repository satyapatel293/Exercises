=begin
--------------------- P
input: string of uppercased lower cased and nonapha characters 
output: hash with percentage of each 
rules: 
  Explicit: 
    - return has with three keys that are symbols
    - percentages in float 
  Implicit: 
    -
    - 
--------------------- E

--------------------- D

--------------------- A
store length of string 
store total of match uppercased chars 
store total of match lower case chars 
store total of match other chars 

create hash 
push upper/string length to float 
push lower/stirng legnth to float
push other/string legnth to float

retrun hash 
=end


def letter_percentages(string)
  total_length = string.size.to_f
  lowercased_percentage = string.count('a-z') / total_length * 100 
  uppercased_percentage = string.count('A-Z') / total_length * 100 
  niether_percentage = string.count('^a-zA-Z') / total_length * 100 
  
  
  percentages_hash = {
    lowercase: format('%0.1f', lowercased_percentage),
    uppercased: format('%0.1f', uppercased_percentage),
    niether: format('%0.1f', niether_percentage)
  }
end 

puts letter_percentages('abCdef 123') #== { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
puts letter_percentages('AbCd +Ef') #== { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
puts letter_percentages('123') #== { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
puts letter_percentages('abcdefGHI')