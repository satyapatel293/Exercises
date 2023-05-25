=begin
--------------------- P
Find the hamming distance which is defined as the differnce between two equal length sequences of DNA 
if one stand is shorter than the other use that strands length for the comparison 

input: 
  - two strings
  - can be any length 
  - Capitilzed letters 
output: 
  - integer which represents the diff between the two strings
rules: 
  Explicit: 
    - use the shorter of the two strings for the comparison 
    - the differnce is counted for each postion in the string which is different from the other string
  Implicit: 
    - if string is empty hamming distance is 0
    - do not mutate original string 
--------------------- E

DNA.new('ACCAGGG').hamming_distance('ACTATGG') == 3 
see test cases 
--------------------- D
Class DNA 
  @sequence = orignial sequence

comparing to inputs string 

Strings convert to array holding DNA sequence 
--------------------- A
set length = length of shorter string
convert shorter string to array
hamming distance = 0 

itterate through array with index and value 
     hamming distance +1  unless current value is equal longer string current index move next 

return hamming distance 
=end
require 'pry'

class DNA 
  attr_accessor :strand

  def initialize(strand)
    @strand = strand
  end 

  def hamming_distance(distance)
    shorter, longer = [strand, distance].sort_by(&:length)

    result = 0 

    shorter.chars.each_with_index do |point, index|
      result += 1 unless point == longer[index]
    end 

    result
  end 
end 


# Their soultion 

class DNA
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(comparison)
    shorter = @strand.length < comparison.length ? @strand : comparison
    differences = 0

    shorter.length.times do |index|
      differences += 1 unless @strand[index] == comparison[index]
    end

    differences
  end
end