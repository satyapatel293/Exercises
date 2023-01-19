def decrease(counter)
  counter -= 1
end

counter = 10

10.times do
  puts counter
  decrease(counter)
end

puts 'LAUNCH!'

=begin
The issue is the decrease method on line 1 is pass by value and unable to modifiy the value of counter on line 5, inside this method we are reassining the method local varibale counter to a new object with value counter - 1 and the counter variable on line 5 is now pointing to a differnet place in memoery 

to fix this we need to reassing the return value of the decrease call to the counter varaible inside the block which has access to the local variable at this point in the programs scope

=end

def decrease(counter)
  counter - 1
end

counter = 10

10.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'


# Further exploration

def decrease(counter)
  counter - 1
end

counter = 10

while counter >= 1
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'