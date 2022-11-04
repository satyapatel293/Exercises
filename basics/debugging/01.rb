def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Examples

find_first_nonzero_among(0, 0, 1, 0, 2, 0)
# This method required 1 argument and was given 6
find_first_nonzero_among(1)
#each is a not a valid method on this data type (integer)