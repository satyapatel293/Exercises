class Card
  include Comparable
  attr_reader :rank, :suit

  VALUES = {"Jack" => 11, "Queen" => 12, "King" => 13, "Ace" => 14,}

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def <=>(other_card)
      value <=> other_card.value  
  end

  def value 
    VALUES.fetch(rank, rank)
  end 

  def to_s 
    "#{rank} of #{suit}"
  end 
end



class Deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  attr_accessor :cards
  def initialize
    reset
  end 

  def draw
    reset if @deck.empty?
    @deck.pop 
  end  

  private 

  def reset
    @deck = RANKS.product(SUITS).map do |rank, suit|
      Card.new(rank, suit)
    end 

    @deck.shuffle!
  end 
  
end



# Include Card and Deck classes from the last two exercises.

class PokerHand
  def initialize(deck)
    @deck = deck
    draw_cards 
  end

  def draw_cards
    @hand = []
    5.times {@hand << @deck.draw}
  end 

  def print
    puts hand 
  end

  def evaluate
    case
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full house'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two pair'
    when pair?            then 'Pair'
    else                       'High card'
    end
  end

  private

  def hand 
    @hand.dup
  end  

  def royal_flush?
    straight_flush? && hand.map(&:value).min == 10
  end

  def straight_flush?
    flush? && straight?
  end

  def four_of_a_kind?
    values = hand.map(&:value)
    count = values.map do |value|
      values.count(value)
    end 
    count.count(4) == 4
  end

  def full_house?
    pair? && three_of_a_kind?
  end

  def flush?
    suits = hand.map(&:suit)
    suits.all?(suits[0])
  end

  def straight?
    values = hand.map(&:value)
    low_card = values.min 
    high_card = low_card + 4 
    values.sort == (low_card..high_card).to_a
  end

  def three_of_a_kind?
    values = hand.map(&:value)
    count = values.map do |value|
      values.count(value)
    end 
    count.count(3) == 3
  end

  def two_pair?
    values = hand.map(&:value)
    count = values.map do |value|
      values.count(value)
    end 
    count.count(2) == 4
  end

  def pair?
    values = hand.map(&:value)
    count = values.map do |value|
      values.count(value)
    end 
    count.count(2) == 2
  end
end





hand = PokerHand.new(Deck.new)
hand.print
puts hand.evaluate

# Danger danger danger: monkey
# patching for testing purposes.
class Array
  alias_method :draw, :pop
end

# Test that we can identify each PokerHand type.
hand = PokerHand.new([
  Card.new(10,      'Hearts'),
  Card.new('Ace',   'Hearts'),
  Card.new('Queen', 'Hearts'),
  Card.new('King',  'Hearts'),
  Card.new('Jack',  'Hearts')
])
puts hand.evaluate == 'Royal flush'

hand = PokerHand.new([
  Card.new(8,       'Clubs'),
  Card.new(9,       'Clubs'),
  Card.new('Queen', 'Clubs'),
  Card.new(10,      'Clubs'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight flush'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Four of a kind'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Full house'

hand = PokerHand.new([
  Card.new(10, 'Hearts'),
  Card.new('Ace', 'Hearts'),
  Card.new(2, 'Hearts'),
  Card.new('King', 'Hearts'),
  Card.new(3, 'Hearts')
])
puts hand.evaluate == 'Flush'

hand = PokerHand.new([
  Card.new(8,      'Clubs'),
  Card.new(9,      'Diamonds'),
  Card.new(10,     'Clubs'),
  Card.new(7,      'Hearts'),
  Card.new('Jack', 'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new('Queen', 'Clubs'),
  Card.new('King',  'Diamonds'),
  Card.new(10,      'Clubs'),
  Card.new('Ace',   'Hearts'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(6, 'Diamonds')
])
puts hand.evaluate == 'Three of a kind'

hand = PokerHand.new([
  Card.new(9, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(8, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Two pair'

hand = PokerHand.new([
  Card.new(2, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(9, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Pair'

hand = PokerHand.new([
  Card.new(2,      'Hearts'),
  Card.new('King', 'Clubs'),
  Card.new(5,      'Diamonds'),
  Card.new(9,      'Spades'),
  Card.new(3,      'Diamonds')
])
puts hand.evaluate == 'High card'




counter = 0
loop do    
  hand = PokerHand.new(Deck.new)
  if hand.evaluate == 'Four of a kind'
    hand.print
    puts "That took #{counter} hands"
    break 
  end 
  counter += 1
end 