=begin
  Write a method that takes two arguments,
  a positive integer and a boolean, and calculates the bonus for a given salary.
  If the boolean is true, the bonus should be half of the salary. 
  If the boolean is false, the bonus should be 0.


------------------------ P
input postive integer and boolean
output integer which is either half salary or 0 
rules 
  bonus is half salary if boolen is true
  bonus is 0 if boolen is false 
  working with integers

------------------------ E
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

------------------------ D


------------------------ A
check if arg2 is true
if so return salary/2

else 
  retunr 0



=end


def calculate_bonus(salary, bonus)
  bonus ? salary/2 : 0
end 




puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000