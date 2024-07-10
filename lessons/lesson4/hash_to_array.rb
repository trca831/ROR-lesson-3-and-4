def collect_hash_data
    hash_data = {}
    
    puts "Please enter 5 keys and their corresponding values:"
  
    5.times do |i|
      print "Enter key #{i + 1}: "
      key = gets.chomp
      print "Enter value #{i + 1}: "
      value = gets.chomp
      hash_data[key] = value
    end
  
    return hash_data
  end

  def print_hash_arrays(hash_data)
    keys_array = hash_data.keys
    values_array = hash_data.values
  
    puts "Array of keys: #{keys_array}"
    puts "Array of values: #{values_array}"
  end
  
  if __FILE__ == $0
    hash_data = collect_hash_data
    print_hash_arrays(hash_data)
  end