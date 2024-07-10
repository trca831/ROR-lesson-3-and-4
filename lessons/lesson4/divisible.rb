# Write a method that returns in an array all the numbers between 1 and 100 
# that are divisible by 2 or 3 or 5. 
def divisible_numbers
    result = []
    (1..100).each do |number|
        if number % 2 == 0 || number % 3 == 0 || number % 5 == 0
            result << number
        end
    end
    result
end
# Then call the method in your program and print out what it returns.  

numbers = divisible_numbers
puts numbers