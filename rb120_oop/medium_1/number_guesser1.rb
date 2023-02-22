
class GuessingGame
  def initalize 
    reset_game
  end 

  def play 
    reset_game
    play_rounds
    display_winner 
  end

  private 

  attr_accessor :guesses, :number, :answer

  def reset_game
    self.guesses = 7 
    self.number = rand(1..100) 
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
      print "Enter a number between 1 and 100: " 
      guess = gets.chomp
      guess = guess.to_i if guess =~ /\A[-+]?\d+\z/ 
      break if (1..100).include? guess 
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
    end 
    puts ''
  end 

end



game = GuessingGame.new
game.play
game.play
