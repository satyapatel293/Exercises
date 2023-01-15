require 'pry'

def sum_pairs(ints, s)
  pairs = []


ints.each_with_index do |first, idx1|
  target = s - first
  if ints.include?(target)
    idx2 = ints.index(target)
    if idx2 == idx1 &&  ints.count(first) > 1 
      subints = ints[(idx1+1)..-1]
      idx2 = subints.index(target) + idx1 + 1
    elsif idx2 <= idx1
      next
    end 
    pairs << [idx1, idx2]
  end 
end

  sorted = pairs.sort_by {|first,second| second }
  
  sorted.first.map {|idx| ints[idx] }
 
 end 

p sum_pairs([1, 4, 8, 7, 3, 15], 8)










# ints.each_with_index do |first, idx1|
#   break if idx1 == ints.size - 1
#   target = s - first
#   subints = ints[(idx1+1)..-1]
#   if ints[(idx1+1)..-1].include?(target)
#     idx2 = subints.index(target) + idx1 + 1
#     pairs << [idx1, idx2]
#   end 
# end








# firstidxs = []
# secondidxs = []
# pairs = []
 
# ints.each_with_index do |first, idx1|
  
#   idx2 = idx1 +1 
#   while idx2 < ints.size
#     if first + ints[idx2] == s 
#       firstidxs << idx1
#       secondidxs << idx2
#       break
#     end
#     idx2 += 1
#   end

#   if firstidxs.max >= secondidxs.max
#     break if !firstidxs.empty?
#   end  
# end

# pairs = firstidxs.zip(secondidxs)
# p pairs