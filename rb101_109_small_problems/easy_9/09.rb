=begin
--------------------- P
input: 3 int grades
output: average of 3 grades to letter value
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
take 3 grades and get average 
compare average to letter grades 
return letter grade 
=end

def get_grade(first, second, third)
  average = (first + second + third) / 3.0 
  case  
  when average >= 90 then 'A'
  when average >= 80 then 'B'
  when average >= 70 then 'C'
  when average >= 60 then 'D'
  else 'F'
  end 
end 


p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"


# range is better when using case statements 

def get_grade(s1,s2,s3)
  result = (s1 + s2 + s3) / 3
  
  case result
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  else              'F'
  end
end 