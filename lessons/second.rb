person = {}
 
#prompt for and collect the first name
print "Enter your first name: "
person[:first_name] = gets.chomp

#prompt for and collect last name
print "Enter your last name: "
person[:last_name] = gets.chomp

#prompt and collect age
print "Enter your age: "
person[:age] = gets.chomp

#prompt and collect street address
print "Enter your street address: "
person[:street_address] = gets.chomp

#prompt and collect the city
print "Enter your city: "
person[:city] = gets.chomp

#prompt and collect state
print "Enter your state: "
person[:state] = gets.chomp

#output hash
puts "\nPerson Hash: #{person}"

#output keys of the hash
puts "\nKeys: #{person.keys}"

#output values of hash
puts "\nValues Hash: #{person.values}"

#capitalize first name, last name, and city
person[:first_name] = person[:first_name].capitalize
person[:last_name] = person[:last_name].capitalize
person[:city] = person[:city].capitalize

#change the state to upper case
person[:state] = person[:state].upcase

#output the updated hash
puts "\nUpdated Person Hash: #{person}"