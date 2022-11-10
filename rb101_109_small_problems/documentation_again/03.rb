def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6) # => [4, 5, 3, 6]
#look at default positional arugments will fill in known arguments firs then optional defualts second
#the above is not a reccomened cause it's conufsing