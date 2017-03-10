# Receive a string input
# Modify string by advancing every letter one forward
# If it's a space, do not modify
# Output modified string

def encrypt(string_input)
  index = 0
  
  while index < string_input.length
    if string_input[index] == "z"
      string_input[index] = "a"
    elsif string_input[index] != " "
      string_input[index] = string_input[index].next!
    end
    index += 1
  end  

  puts string_input
  return string_input
end

# Receive a string input
# Modify string by taking each letter back one letter in the alphabet
# If it's a space, do not modify
# Output modified string

# Find out what index of the alphabet that letter corresponds to
# 

def decrypt(string_input)
  index = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"

  while index < string_input.length
    if string_input[index] == "a"
      string_input[index] = "z"
    elsif string_input[index] != " "
      index_of_previous = alphabet.index(string_input[index]) - 1
      string_input[index] = alphabet[index_of_previous]
    end
    index += 1
  end

  puts string_input
  return string_input
end

# encrypt("abc")
# encrypt("zed")
# decrypt("bcd")
# decrypt("afe")
# decrypt(encrypt("swordfish"))


# Ask user whether they want to encrypt or decrypt
# Ask them for the password
# Depending on response call the appropriate method
# Print to screen

puts "Would you like to decrypt or encrypt a password?"
option = gets.chomp
puts "What is the password?"
password = gets.chomp

if option == "encrypt"
  encrypt(password)
else option == "decrypt"
  decrypt(password)
end