=begin
--------------------- P
input: starting number and ending number
output: all numbers between those numbers (replace all numbers divisavke by 3s with fizz 5s with buss and 3and5 with fizzbuss)
rules: 
  Explicit: 
    - if number divisible by 3 replace with fizz
    - if number divisible by 5 replace buzz
    - if numuber divisible by 3 and 5 replace fizzbuss
    - range is inclusive of start and end numbers 
  Implicit: 
    -
    - 
--------------------- E

--------------------- D

--------------------- A
check if digit is divisible by 3 && 5 
  fizz buz 
if by 3 
  fiz
if by 5
  buz
else 
  digit 
=end


def fizzbuzz(start, finish)
  result = []
  (start..finish).each do |num|
    case 
    when (num % 3 == 0 && num % 5 == 0 ) then result << 'FizzBuzz'
    when num % 3 == 0 then result << "Fizz"
    when num % 5 == 0 then result << "Buzz"
    else result << num  
    end 
  end 
  result.join(', ')
end 


p fizzbuzz(1,15)