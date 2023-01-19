def rotate90(matrix)
  result = []
  columns =  matrix[0].size 
  rows = matrix.size
  columns.times do |col_idx|
    current_row = []
    rows.times do |row_idx|
      current_row << matrix[row_idx][col_idx]
    end  
    result << current_row.reverse
  end 
  
  result 
end 



matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2




# further exploration
#modifiy the soultion to do 90, 180 270 and 360 rotations based off and arugment 

def rotate90(matrix, deg=90)
  result = []

  columns =  matrix[0].size 
  rows = matrix.size
  columns.times do |col_idx|
    current_row = []
    rows.times do |row_idx|
      current_row << matrix[row_idx][col_idx]
    end  
    result << current_row.reverse
  end  
  
  deg -= 90 
  result = rotate90(result, deg) if deg > 0
  result
end 


matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

p rotate90(matrix2)
p rotate90(matrix2, 180)
p rotate90(matrix2, 270)