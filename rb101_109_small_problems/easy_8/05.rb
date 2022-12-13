def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end 
  result
end 


def substrings(string)
  result = []
  0.upto(string.size - 1) do |start_index|
    holder_string = string[start_index..-1]
    result.concat(leading_substrings(holder_string))
  end 
  result
end


def palindromes(string)
  all_substrings = substrings(string)
  result = [] 
  all_substrings.each do |substring|
    result << substring if substring.length > 1 && substring.reverse == substring
  end 
  result
end 
      

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]




#further exploration 


def palindrome?(string)
  formated_string = string.downcase.delete('^/a-z/')
  formated_string.length > 1 && formated_string.reverse == formated_string
end

def palindromes(string)
  all_substrings = substrings(string)
  result = [] 
  all_substrings.each do |substring|
    result << substring if palindrome?(substring)
  end 
  result
end 


p palindromes('knitting casSeTtes') == [
  'nittin', 'itti', 'tt', 'sS', 'SeTtes', 'eTte', 'Tt'
]
