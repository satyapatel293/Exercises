items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end


# Case 1 
# gather(items) do | *frist_three, last |
#   puts frist_three.join(', ')
#   puts last
# end

# Case 2 
# gather(items) do |first,*middle,last |
#   puts first
#   puts middle.join(', ')
#   puts last
# end

# Case 3 
# gather(items) do |first, *last|
#   puts first
#   puts last.join(', ')
# end

# Case 4 
# gather(items) do | one, two, three, four |
#   puts "#{one}, #{two}, #{three}, and #{four}"
# end



# My variable names should be better like thiers 

# 1
gather(items) do |*produce, wheat|
  puts produce.join(', ')
  puts wheat
end

# 2
gather(items) do |apples, *vegetables, wheat|
  puts apples
  puts vegetables.join(', ')
  puts wheat
end

# 3
gather(items) do |apples, *assorted|
  puts apples
  puts assorted.join(', ')
end

# 4
gather(items) do |apples, corn, cabbage, wheat|
  puts "#{apples}, #{corn}, #{cabbage}, and #{wheat}"
end