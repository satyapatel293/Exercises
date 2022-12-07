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
  need_upper = false
  result = string.split.map do |word|
    word.chars.map do |char|
      need_upper = !need_upper
      need_upper ? char.upcase : char.downcase
    end.join
  end.join(' ')
end

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


p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
