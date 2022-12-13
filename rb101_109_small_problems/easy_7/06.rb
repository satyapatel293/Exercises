=begin
--------------------- P
input: 
output: 
rules: 
  Explicit: 
    - 
    - 
  Implicit: 
    -
    - 
--------------------- E

--------------------- D

--------------------- A
=end

def staggered_case(string)
  result = ''
  need_upper = true
  string.each_char do |char|
    if char =~ /[a-z]/i
      if need_upper 
        result += char.upcase
      else
        result += char.downcase
      end 
      need_upper = !need_upper
    else 
      result += char
    end 
  end
  result
end


# p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# p staggered_case('ALL CAPS') == 'AlL cApS'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'



#further explination if no_count is true do not count non-alphabetic character 
#if no count is false count non-alaphaebtic characters

def staggered_case(string, no_count)
  result = ''
  need_upper = true
  
  string.each_char do |char|
    if char =~ /[a-z]/i
      if need_upper 
        result += char.upcase
      else
        result += char.downcase
      end 
      need_upper = !need_upper if no_count 
    else 
      result += char
    end 

    need_upper = !need_upper unless no_count 
  end
  result
end



p staggered_case('I Love Launch School!', true) == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS', true) == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers', true) == 'IgNoRe 77 ThE 444 nUmBeRs'


puts staggered_case('I Love Launch School!', false) == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS', false) == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers', false) == 'IgNoRe 77 ThE 444 NuMbErS'
