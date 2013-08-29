# validate input to be between 0-9
numbers = /^[\d?]$/
valid_input = false
until valid_input == true
  puts "Enter an integer [0-9]: "
  input = gets.chomp
  if input.match(numbers)
    valid_input = true
  end
end

puts "You entered #{input}"


# validate input to be characters included in an array
array = [ 'A', 'B']

valid_input = false
puts "Enter a letter [A or B]: "
until valid_input == true
  input = gets.chomp
  if array.include?(input)
    valid_input = true
  end
end

puts "You entered #{input}"


# validate input to be a key in a hash
hash = {'Joe' => 'plumber', 'Sue' => 'cook'}

valid_input = false
puts "Enter a valid key: "
until valid_input == true
  input = gets.chomp
  if hash.has_key?(input)
    valid_input = true
  end
end

puts "You entered #{input}"


# validate input to be a value in a hash
hash = {'Joe' => 'plumber', 'Sue' => 'cook'}

valid_input = false
puts "Enter a valid value: "
until valid_input == true
  input = gets.chomp
  if hash.has_value?(input)
    valid_input = true
  end
end

puts "You entered #{input}"


# validate input to be integer
# 123, 4568, 4,
puts "Enter any integer: "
valid_input = false
until valid_input == true
  input = gets.chomp
  numbers = /[\d]+/
  if input.match(numbers)
    valid_input = true
  end
end
puts "You entered #{input}"


# validate input to be limited to A-Z and a-z
valid_input = false
until valid_input == true
  puts "Enter a string of any length (no numbers or symbols): "
  input = gets.chomp
  letters = /^[A-Za-z]+$/
  if input.match(letters)
    valid_input = true
  end
end
puts "You entered #{input}"



 # returns nil /[^A-Za-z]/.match("word")
 # this will return a match on '5' :  /[^A-Za-z]/.match("some5thing")