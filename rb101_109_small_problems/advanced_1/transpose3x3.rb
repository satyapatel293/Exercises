=begin
--------------------- P
input: 3x3 matrix
output: 3x3 martix with rows and coloms swaped
rules: 
  Explicit: 
    - cannot use transpose method
    - return a new nested array do not modify input
  Implicit: 
    -
    - 
--------------------- E

--------------------- D

--------------------- A
take a nest array
create holder array = [[][][]]

itterate through array each
    itterate through subarray each with index 
      nested[i] << item 
    end
  end 

  hodler array

=end


def transpose(martix)
  result = [[],[],[]]

  martix.each do |row|
    row.each_with_index do |element, idx|
      result[idx] << element
    end 
  end 

  result
end 



# Trying their soultion 

def transpose(martix)
  result = []
  (0..2).each do |col_idx|
    current_row = []
    martix.each do |row|
      current_row << martix[row][col_idx]
    end  
    result << current_row
  end 
  
  result 
end 


matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
