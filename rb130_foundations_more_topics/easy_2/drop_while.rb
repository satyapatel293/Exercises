def drop_while(array)
  result = []
  included = false 
  array.each do |element| 
    included = true unless yield element 
    result << element if included
  end 
  result 
end 


p drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| true } == []
p drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
p drop_while([]) { |value| true } == []


# Thier soultion while loop makes it obvious that we want 
# to stop prematurely, since we know that we 
# may not be iterating through the entire Array.

def drop_while(array)
  index = 0
  while index < array.size && yield(array[index])
    index += 1
  end

  array[index..-1]
end