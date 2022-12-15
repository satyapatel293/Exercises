def negative(int)
  int > 0 ? - int : int
end  


negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby


# oneliner because all outputs will be negative anyway 
def negative(number)
  -number.abs
end