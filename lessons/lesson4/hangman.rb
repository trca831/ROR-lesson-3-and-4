# Write a program hangman.rb that contains a method called hangman.  
# The method's parameters are a word and an array of letters.  
# It returns a string showing the letters that have been guessed.  
# Call the method several times from within your program, testing with 
# different words and strings, and printing out what is returned, 
# so that you know that your hangman method works.

def hangman(word, guesses)
    result = ""
    
    word.chars.each do |char|
      if guesses.include?(char)
        result += char  
      else
        result += "_"  
      end
    end
    
    return result
  end

# Example: hangman("bob", ["b"]) should return "b_b"
# Example: hangman("alphabet", ["a", "h"]) should return "a__ha___"

# Test cases
puts hangman("bob", ["b"])               # Output: "b_b"
puts hangman("alphabet", ["a", "h"])    # Output: "a__ha___"

# Additional tests
puts hangman("hangman", ["a", "n", "m"]) # Output: "_an_man"
puts hangman("California", ["r", "a", "n"])    # Output: "_a____rn_a"
puts hangman("Code", ["o", "e"])  # Output: "_o_e"