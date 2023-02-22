
class GuessingGame

  def initialize(low_value, high_value)
    @low_value = low_value
    @high_value = high_value
    @range = (low_value..high_value)
    reset_game
  end 

  def play 
    reset_game
    play_rounds
    display_winner 
  end

  private 

  attr_accessor :guesses, :number, :answer
  attr_reader :range, :low_value, :high_value

  def reset_game
    @guesses = Math.log2(range.size).to_i + 1
    @number = rand(range) 
  end 

  def play_rounds
    loop do 
      puts "You have #{guesses} guesses remaining."
      self.answer = make_guess
      self.guesses -= 1 
      display_result
      break if game_over 
    end 
  end 

  def make_guess
    guess = nil
    loop do 
      print "Enter a number between #{low_value} and #{high_value}: " 
      guess = gets.chomp
      guess = guess.to_i if guess =~ /\A[-+]?\d+\z/ 
      break if (range).cover? guess 
      print "Invalid guess. "
    end 
    guess
  end 

  def display_result
    if answer < number
      puts "Your guess is too low."
    elsif answer > number
      puts "Your guess is too high."
    elsif answer == number
      puts "That's the number!"
    end
    puts ''
  end

  def game_over
    answer == number || guesses == 0 
  end

  def display_winner
    if answer == number
      puts 'You won!'
    else 
      puts 'You have no more guesses. You lost!'
      puts "The number was #{number}"
    end 
    puts ''
  end 
end


game = GuessingGame.new(1, 10_000)
game.play
