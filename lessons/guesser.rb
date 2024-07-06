
def get_feedback(guess)
    loop do
      print "Is #{guess} too low, too high, or correct? "
      feedback = gets.chomp.downcase
      return feedback if %w[too\ low too\ high correct].include?(feedback)
      puts "Invalid input. Please enter 'too low', 'too high', or 'correct'."
    end
  end
  
  def play_game
    puts "Think of a number between 1 and 100."
    min = 1
    max = 100
    guess_count = 0
  
    loop do
      guess = (min + max) / 2
      guess_count += 1
      feedback = get_feedback(guess)
  
      case feedback
      when "too low"
        if guess >= max
          puts "I think you are lying. The range is inconsistent."
          break
        end
        min = guess + 1
      when "too high"
        if guess <= min
          puts "I think you are lying. The range is inconsistent."
          break
        end
        max = guess - 1
      when "correct"
        puts "I guessed your number #{guess} in #{guess_count} guesses!"
        break
      end
  
      if min > max
        puts "I think you are lying. The range is inconsistent."
        break
      end
    end
  end
  
  def play_again?
    loop do
      print "Do you want to play again? (yes/no): "
      answer = gets.chomp.downcase
      return true if answer == 'yes'
      return false if answer == 'no'
      puts "Invalid input. Please enter 'yes' or 'no'."
    end
  end
  
  # Main program loop
  loop do
    play_game
    break unless play_again?
  end
  
  puts "Thank you for playing!"