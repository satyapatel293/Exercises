=begin
--------------------- P
input: integer representing year
output: string representing current century
rules: 
  Explicit: 
    - string ends with apporiate st,nd,rd,th
    - centuries run from 01-100 = 1st, 1901-2000 = 20th
  Implicit: 
    - round up to closest 100 to get current century
    - 1st 2nd 3rd 11th 12th 13th are expection cases 
    -  
--------------------- E
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'
--------------------- D

--------------------- A
if interger is not rounded up to
take integer round up to closestest 100th place 
return the value minus last 2 digits
change to string
check last digit 
if 1 
  check 2nd to last digit 
  if !=1 append st  
if 2 
  check 2nd to last digit 
  if !=1 append nd 
if 3 
  check 2nd to last digit 
  if !=1 append rd

else 
  append th 


return century 
=end


def century(year)
  if year % 100 == 0 
    current_century = year/100
  else
    current_century = (year.truncate(-2) + 100) / 100
  end


  last_digit = current_century % 10
  second_to_last_digit = current_century % 100 / 10


  if last_digit == 1 && second_to_last_digit != 1 
    current_century.to_s << "st"
  elsif last_digit == 2 && second_to_last_digit != 1 
    current_century.to_s << "nd"
  elsif last_digit == 3 && second_to_last_digit != 1 
    current_century.to_s << "rd"
  else
    current_century.to_s << "th"
  end

end


p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p  century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'


#again would be eaiser to extract some methods to make code more readable 

def century_suffix(century)
  return 'th' if [11,12,13].include?(century % 100) # this is more consise then my if statments and eaiser to read
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end 

def century(year)
  century = year / 100 + 1 
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end 



p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p  century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'