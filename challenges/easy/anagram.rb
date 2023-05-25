=begin
--------------------- P
given a base word and a list of possible anagrams, return a list which contains the anagrams of the 
base word from the possible angarams 
input: 
  - string 
  - array of string
  - capitilizations does not matter  
output: 
  - array of words 
  - if no matching words empty array 

rules: 
  Explicit: 
    - anagrams are words which can be created from a word
    by rearaingin the letters of that word
    - using the same words is not an anagram 
  Implicit: 
    - capitlization does not matter 
    - can only use each letter one time 
--------------------- E
word allergy
list [gallery ballerina regally clergy largely leading]
anagrams [gallery largely regally]
--------------------- D
Anagram class 
    #constructor
    holds original word 

    #anagrams 
    holds list of possible anagrams 
    returns list of anagrams 

    store letters of word in array 
--------------------- A

word to array downcase
itterate thorugh the possibles
    next if possdowncase is word downcase 
    
    poss to letters downcased 
    itterate through wordsarray 
      return false if delete current letter from poss_arr
    
    keep poss letters empty 


=end

class Anagram
  def initialize(word)
    @word = word 
  end 

  def match(possilbe_anagrams)
    word_chars = word.downcase.chars 

    possilbe_anagrams.select do |current| 
      next if current.downcase == word.downcase || current.size != word.size 
      
      letters = current.downcase.chars 
      
      word_chars.each do |char|
        index = letters.index(char)
        next unless index  
        letters.delete_at(index)
      end 

      letters.empty?
    end 
  end 


  private 
  attr_reader :word 
end 



p Anagram.new('mass').match(['magl'])


# Thier soultion is way easier to follow and uses sort effectively 

class Anagram
  def initialize(word)
    @word = word.downcase
  end 

  def match(possilbe_anagrams)
    possilbe_anagrams.select do |ana| 
      ana.downcase != word && anagram?(ana, word)
    end 
  end 


  private 
  attr_reader :word 

  def sorted_letters(str)
    str.downcase.chars.sort
  end 

  def anagram?(word1, word2)
    sorted_letters(word1) == sorted_letters(word2)
  end 
end 