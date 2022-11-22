=begin
--------------------- P
input: year integer greater than 0 
output: boolean true or false is a leap year
rules: 
  Explicit: 
    - years evenly divisble by 4 are leap years
    - if year is divisible by 100 but not 400 then is not leap year 
    - if year is divisible by 400 then always leap year 
  Implicit: 
    - 
    - 
--------------------- E
leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
--------------------- D

--------------------- A
check if year is divisible by 4 
  - if so check if divisible by 100
    - if not year is leap year  
    - if so check if divisible by 400
      - if so year is leap year 
      - NO leap year
  - NO leap year 
=end


def leap_year?(year)
  if year % 4 == 0 
    if year % 100 == 0
      if year % 400 == 0 
        true 
      else 
        false
    else 
      true
  else
    false 
  end 
end 


def leap_year?(year)
  return false unless year % 4 == 0 
  return true if year % 400 == 0 
  return false if year % 100 == 0 
  return true 
end 


#their solution cleaner and easier to read 

def leap_year?(year)
  if year % 400 == 0 
    true
  elsif year % 100 == 0
    false
  else 
    year % 4 == 0 
  end
end 