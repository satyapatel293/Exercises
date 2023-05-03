def step(first, last, step_value)
  start = first 
  loop do 
    break if start > last 
    yield start 
    start += step_value
  end 

  (first..last)
end


p step(1, 10, 3) { |value| puts "value = #{value}" }


# Thier soultion basically the same exepct return value 


def step(start_point, end_point, increment)
  current_value = start_point
  loop do
    yield(current_value)
    break if current_value + increment > end_point
    current_value += increment
  end
  current_value
end


#  There's no particular reason why we choose to return current_value other 
# than the fact that it is a reasonably sensible value. Range#step returns self 
# (this is, the original Range object), but that doesn't work for us. Another 
# reasonable return value might be nil, or perhaps the last value returned by the block.