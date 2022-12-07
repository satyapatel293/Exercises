=begin
--------------------- P
input: string
output: hash with the pairs, #chars lowercase, #chars uppercase, #chars niether
rules: 
  Explicit: 
    - 
    - 
  Implicit: 
    -
    - 
--------------------- E
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
--------------------- D

--------------------- A
create has with 3 key values pairs all at 0
itterate through each character 
if character is included in a..z uncased 
  check if charcter is lower case
    if so add to lower case value
  else 
    add to uppter case value
if not then add to neith value

return hash

=end


def letter_case_count(string)
  result_hash = {
    lowercase: string.count('a-z'),
    uppercase: string.count('A-Z'),
    neither: string.count('^A-z')
  }
end


p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }