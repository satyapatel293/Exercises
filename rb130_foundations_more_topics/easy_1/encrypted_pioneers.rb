ENCRYPTED_PIONEERS = [
  'Nqn Ybirynpr', 
  'Tenpr Ubccre',
  'Nqryr Tbyqfgvar',
  'Nyna Ghevat',
  'Puneyrf Onoontr',
  'Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv',
  'Wbua Ngnanfbss',
  'Ybvf Unvog',
  'Pynhqr Funaaba',
  'Fgrir Wbof',
  'Ovyy Tngrf',
  'Gvz Orearef-Yrr',
  'Fgrir Jbmavnx',
  'Xbaenq Mhfr',
  'Fve Nagbal Ubner',
  'Zneiva Zvafxl',
  'Lhxvuveb Zngfhzbgb',
  'Unllvz Fybavzfxv',
  'Tregehqr Oynapu'
]

def rot13(string)
  lowercase = ('a'..'z').to_a.join('')
  uppercase = lowercase.upcase
  encrypted_lower = (("n"..'z').to_a  + ('a'..'m').to_a).join('')
  encrypted_upper = encrypted_lower.upcase

  input = lowercase + uppercase
  output = encrypted_lower + encrypted_upper

  string.tr(input, output)
end 

real_names = ENCRYPTED_PIONEERS.map {|encoded_name| rot13(encoded_name)}

real_names.each_with_index do |name, index|
  puts "#{name} = #{ENCRYPTED_PIONEERS[index]}"
end



# Thier soultion using #ord and #chr is more 

def decrypt_char(encrypted_char)
  case encrypted_char
  when 'a'..'m', 'A'..'M' then (encrypted_char.ord + 13).chr
  when 'n'..'z', 'N'..'Z' then (encrypted_char.ord - 13).chr
  else                          encrypted_char
  end 
end 

def decrypt_string(encoded_string)
  encoded_string.each_char.reduce('') do |result, encrypted_char|
    result + decrypt_char(encrypted_char)
  end 
end 

ENCRYPTED_PIONEERS.each do |encoded_name|
  puts decrypt_string(encoded_name)
end 