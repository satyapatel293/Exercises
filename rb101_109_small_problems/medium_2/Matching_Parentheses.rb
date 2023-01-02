def balanced?(string)
  parentheses = string.gsub(/[^\(^\)]/, '')
  return false if parentheses[0] == ')' || parentheses[-1] == '(' 
  loop do 
    parentheses = parentheses.gsub('()', '')
    return true if parentheses == '' 
    return false if parentheses.length.odd? || parentheses == ')(' 
  end 
end 
 
#SOLUTION IS WRONG DOES NOT TAKE EDGE CASE WELL added parentheses == ')('  for one but unsure of others


p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What (((is))) )( up()') == false


#thier soultion


def balanced?(string)
  parentheses = 0 
  string.each_char do |char|
    parentheses += 1 if char == '('  
    parentheses -= 1 if char == ')'
    break if parentheses < 0  
  end 

  parentheses.zero?
end 

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What (((is))) )( up()') == false



# further exploration

def balanced?(string, special)
  net = 0 
  if special[0] != special[1]
    string.each_char do |char|
      net += 1 if char == special[0]  
      net -= 1 if char == special[1]
      break if net < 0  
    end 
    return net.zero? 
  else 
    string.each_char do |char|
      net += 1 if char == special[0]  
    end 
    return net % 2 == 0 
  end 
end 


def all_balanced?(string)
  balanced_chars = []

  %w(() [] {} '' "").each do |value|
    balanced_chars.push(balanced?(string, value))
  end 

  balanced_chars.all?(true)
end 


p all_balanced?('({(What) (""is []th}is))?') == true
p all_balanced?('((What"")) (i"s this))?') == false
p all_balanced?('"I am so sleepy," (she) said>.')