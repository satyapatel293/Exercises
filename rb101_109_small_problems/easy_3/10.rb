def palindromic_number?(number)
  string = number.to_s
  string == string.reverse
end 