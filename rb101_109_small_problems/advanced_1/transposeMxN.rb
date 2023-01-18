def transpose(matrix)
  result = []
  columns =  matrix[0].size 
  rows = matrix.size
  columns.times do |col_idx|
    current_row = []
    rows.times do |row_idx|
      current_row << matrix[row_idx][col_idx]
    end  
    result << current_row
  end 
  
  p result 
end 




transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
transpose([[1]]) == [[1]]