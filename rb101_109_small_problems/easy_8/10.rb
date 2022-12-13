def center_of(string)
  middle = string.size/2.0
  if string.size.odd?
    string[middle.floor]
  else
    string[middle - 1, 2]
  end 
end 


p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'