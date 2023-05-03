def one?(collection)
  total_true = 0  
  collection.each do |element|
    total_true += 1 if yield element
    return false if total_true > 1 
  end 

  total_true == 1
end

p one?([1, 3, 5, 6]) { |value| value.even? }  ==  true
p one?([1, 3, 5, 7]) { |value| value.odd? } == false
p one?([2, 4, 6, 8]) { |value| value.even? } == false
p one?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p one?([1, 3, 5, 7]) { |value| true }  == false
p one?([1, 3, 5, 7]) { |value| false }  == false
p one?([]) { |value| true } == false

#their soultion 

def one?(collection)
  seen_one = false  
  collection.each do |element|
    next unless yield(element)
    return false if seen_one
    seen_one = true
  end
  seen_one

p one?([1, 3, 5, 6]) { |value| value.even? }  ==  true
p one?([1, 3, 5, 7]) { |value| value.odd? } == false
p one?([2, 4, 6, 8]) { |value| value.even? } == false
p one?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p one?([1, 3, 5, 7]) { |value| true }  == false
p one?([1, 3, 5, 7]) { |value| false }  == false
p one?([]) { |value| true } == false