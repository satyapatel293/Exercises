factorial = Enumerator.new do |y|
  a = b = 1
  loop do
    y.yield a
    a, b = b*a, b+1 
  end
end

7.times { |n| puts "#{n}! == #{factorial.next}" } 
puts '-------------------'
3.times { |n| puts "#{n}! == #{factorial.next}" } #this will not produce the correct output
factorial.rewind # resets the itteration 
puts '-------------------'
7.times { |n| puts "#{n}! == #{factorial.next}" } 


puts '-------------------'
factorial.each_with_index do |value, index|   # Using internal itteration we reset the ittteration automatically 
  puts "#{index}! == #{value}" 
  break if index >= 5
end 

# Thier soultions shows the itteration more clearly 

factorial = Enumerator.new do |yielder|
  accumulator = 1
  number = 0
  loop do
    accumulator = number.zero? ? 1 : accumulator * number
    yielder << accumulator
    number += 1
  end
end