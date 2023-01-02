=begin
--------------------- P
input: string
output: true or false
rules: 
  Explicit: 
    - if word has both letter from a given block return false
    - not case senstive
    - true if the word can be spelled form this set of blocks  
  Implicit: 
    -
    - 
--------------------- E

--------------------- D

--------------------- A
has of blocks with key and value opposites 

split word into array of letters uppercased 
check each letter to see if its in blocks
if in blocks check rest of letters for pair if pair return false 
else move to next letter 
if at end return true 



=end
 

#MY inital solution was wrong 

BlOCKS = {
  'B' => 'O', 
  'X' => 'K', 
  'D' => 'Q', 
  'C' => 'P', 
  'N' => 'A', 
  'G' => 'T', 
  'R' => 'E', 
  'F' => 'S', 
  'J' => 'W', 
  'H' => 'U', 
  'V' => 'I', 
  'L' => 'Y', 
  'Z' => 'M',
  '0' => 'B', 
  'K' => 'X', 
  'Q' => 'D', 
  'P' => 'C', 
  'A' => 'N', 
  'T' => 'G', 
  'E' => 'R', 
  'S' => 'F', 
  'W' => 'J', 
  'U' => 'H', 
  'I' => 'V', 
  'Y' => 'L', 
  'M' => 'Z' 
}

def block_word?(word)
  letters = word.split('').map {|char| char.upcase}
  return false if letters.uniq != letters
  letters.each do |char|
    if letters.include?(BlOCKS[char])
      return false
    end 
  end 
  true
end 

p block_word?('hello')
p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
p block_word?('jeest') == false


# This is complex solution thier soultion is more elegant 


BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)

def block_word?(word)
  upcased_word = word.upcase
  BlOCKS.none? {|block| upcased_word.count(block) >= 2 }
end 



