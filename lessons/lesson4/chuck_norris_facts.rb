require 'faker'

loop do
  puts "Do you want to know a fact about Chuck Norris? (yes/no)"
  answer = gets.chomp.downcase

  case answer
  when 'yes', 'y'
    puts Faker::ChuckNorris.fact
  when 'no', 'n'
    puts "Goodbye!"
    break
  else
    puts "Invalid response. Please enter 'yes' or 'no'."
  end
end