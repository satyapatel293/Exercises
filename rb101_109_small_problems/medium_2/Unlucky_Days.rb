=begin
--------------------- P
input: Year greater than 1752
output: number of Firday the 13ths in that year
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

check 13th of each month of year 
if 13th is on firday +1 

=end
require 'date'
 
def friday_13th(year)
  total = 0
  1.upto(12) do |month|
    if Date.new(year, month, 13).friday?
      total += 1
    end 
  end 
  total
end 

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2


#further exploration find the number of months that have 5 firdays 

=begin
now take each month of the year 
Date.valid_date?(2001,2,29)    
take the days of the month cycle 
check if friday add to count 
if count is greater than 5 at to total months 
  
move to next monnth 
  
=end


def how_many_firdays(year)
  total_months = 0 

  1.upto(12) do |month|
    monthly_counter = 0
    
    day = 1
    loop do 
      if Date.valid_date?(year, month, day)
        monthly_counter += 1 if Date.new(year, month, day).friday?
        day += 1 
      else 
        break
      end 
    end 

    total_months += 1 if monthly_counter == 5
  end 

  total_months
end 

p how_many_firdays(1900)
