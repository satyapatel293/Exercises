def missing(arr)
  full_set = (arr[0]...arr[-1]).to_a 
  full_set.reject {|num| arr.include?(num)}
end 


p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []


# Thier soultion 

def missing(array)
  result = []
  array.each_cons(2) do |first, second|
    result.concat(((first + 1 )..(second - 1)).to_a)
  end 

  result
end 

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []


# other soultions 

def missing(arr)
  full_set = (arr[0]...arr[-1]).to_a
  full_set - arr
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []


def missing(arr)
  result = []

  arr.each_with_index do |num, index|
    break if index == arr.size - 1 
    num += 1 

    while num < arr[index + 1]
      result << num
      num += 1 
    end 
  end 

  result 
end 


p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []