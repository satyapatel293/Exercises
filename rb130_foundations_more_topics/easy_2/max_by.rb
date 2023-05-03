def max_by(array)
  result = array[0]
  array.each do |element| 
    current_yield = yield(element)
    largest = yield(result)
    result = element if current_yield > largest
  end 
  result
end 


p max_by([1, 5, 3]) { |value| value + 2 } == 5
p max_by([1, 5, 3]) { |value| 9 - value } == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil


# Thier solution is basically the same execpt the handle
# the first edge case specifcally which forces them to itterate 
# from 1 to -1 index of the arryay and they have better labels
# for thier vairbles, there are less passes to the block as well 
# which makes it more efficent 


def max_by(array)
  return nil if array.empty?

  max_element = array.first
  largest = yield(max_element)

  array[1..-1].each do |item|
    yielded_value = yield(item)
    if largest < yielded_value
      largest = yielded_value
      max_element = item
    end
  end

  max_element
end