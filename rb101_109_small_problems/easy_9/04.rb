def sequence(int)
  (1..int).to_a
end


sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]


#further exploration

def sequence(int)
  first, last = [int, 1].sort 
  (first..last).to_a
end 