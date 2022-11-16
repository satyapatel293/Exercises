# input array
# output hash

# rules: count occurance of each element 
# capitilzation matters

# empy hash []
# set counter to 0
# iterate throught array until counter >= array length 
# set occurances = 1 
  
#   iterate through each element 
#     if element == array[counter] 
#       hash[array[counter]] += 1 
#     end
#   end

#   puts "#{array[counter]} => #{occurances}"
#   counter += 1 

#   p hash 
#   push 

def count_occurrences(array)
  total = []
  counter = 0 
  while counter < array.length
    occurances = 0
    array.each do |element|
      if element == array[counter]
        occurances += 1 
      end 
    end
    total << "#{array[counter]} => #{occurances}"
    counter += 1 
  end
  puts total.uniq
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

# count_occurrences(vehicles)

# Another method using hash would 
# can refactor to make the names more clear 
#i.e. line 51 hash could be occurences and then line 56 occurance can be count 

def count_occurrences(array)
  hash = {}
  array.uniq.each do |element|
    hash[element] = array.count(element)
  end

  hash.each do |element, occurances|
    puts "#{element} => #{occurances}"
  end 
end

count_occurrences(vehicles)