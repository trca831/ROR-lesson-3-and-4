#It generates a random number from 1 to 100.

#In a loop, it prompts you for a guess. What you enter will be a string. 
#So you convert it to an integer with the to_i method of the string class.

def guess_game
    secret_number = rand(1..100)
    loop do
        print "Enter your guess (anywhere between 1 to 100):"
        guess = gets.chomp

        if guess.to_i.to_s != guess || guess.to_i == 0 
            puts "Invalid Number. Please enter a number between 1 to 100."
            next
        end

        guess = guess.to_i
#It tells you whether your guess is too high, too low, or correct.

if guess < secret_number
    puts "Number too low!"
elsif guess > secret_number
    puts "Number too high!"
else 
    puts "Guess is correct! The secret number was #{secret_number}!"
    break
end
end
end

#If your guess is correct, it exits the loop, and asks you if you want 
#to play again. If so, it starts with a new random number. If not, 
#it exits the program.

def play_again?
    loop do
        print "Do you want to play again? Yes or no?"
        answer = gets.chomp.downcase
        if answer == 'yes'
            return true
        elsif answer == 'no'
            return false
        else
            puts "Invalid input. Please enter 'yes' or 'no'."
        end
    end
end

#Be sure you handle the case where the guess is not a number. T
#he to_i method would return 0 in this case, so the program should 
#say that the guess is invalid.

loop do
    guess_game
    break unless play_again?
end

puts "Thanks for playing! Happy Coding!"