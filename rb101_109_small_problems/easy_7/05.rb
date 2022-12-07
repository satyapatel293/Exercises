def staggered_case(string)
  result = ''
  string.chars.each_with_index do |char, index|
    if index.even?
      result << char.upcase
    else 
      result << char.downcase
    end
  end 
  result
end



puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'



# thier soultion 
def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

#further exploration modify to make upcase or donw
def staggered_case(string, upcased)
  result = ''
  need_upper = upcased
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end