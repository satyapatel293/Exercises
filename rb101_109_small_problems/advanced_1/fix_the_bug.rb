def my_method(array)
  if array.empty?
    []
  elsif
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])


#the bug is on line 4 there elsif statement does not ahve a conditional statment to evaulate
# so it is evaulating the next line the map call which returns an array which will always evauluate
# to true and becuase there is no clause to evaulate it will return nil 


# to fix this you can add the conditional statement array.length > 1 after the elsif cluase on line 4 