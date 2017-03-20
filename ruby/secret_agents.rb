# Receive a string input
# Modify string by advancing every letter one forward
# If it's a space, do not modify
# Output modified string

def encrypt(string_input) #define the method and ask for an argument
  index = 0 #initialize the loop / start the index at 0
  
  while index < string_input.length # while loop will run while the length of the input is greater than the index that is incremented by 1 each loop
    if string_input[index] == "z" #edge case
      string_input[index] = "a" #edge case
    elsif string_input[index] != " " #if the char is not equal to " ",
      string_input[index] = string_input[index].next! # it will go to the next letter in the alphabet by .next and will stay that way because of !. this new value is assigned to the index at which we are currently at in the loop
    end
    index += 1
  end  

  puts string_input
  return string_input #return is requesting the output so we can potentially use it
end

# Receive a string input
# Modify string by taking each letter back one letter in the alphabet
# If it's a space, do not modify
# Output modified string

# Find out what index of the alphabet that letter corresponds to
# 

def decrypt(string_input) #define the method and parameter it will take in
  index = 0 #set index to zero as a baseline / to initialize
  alphabet = "abcdefghijklmnopqrstuvwxyz" #define the alphabet as a string

  while index < string_input.length #while loop that will run while the index is less than the length of the argument passed in / the string input. The index will increment by one each time the loop runs.
    if string_input[index] == "a" #this is addressing an edge case, saying that if "a" is in the input, set it equal to "z." Here we are using the location/index to check through each char in the string. The loop with index+= 1 is handling incrementing to each character but [index] is identifying which letter the character is at in the string.
      string_input[index] = "z"
    elsif string_input[index] != " " #This is the condition that handles all other letters that are not exceptions/edge cases. 
      index_of_previous = alphabet.index(string_input[index]) - 1 #This is creating a new variable that is taking the char of the input that has not met the previous conditions (string_input[index]), and asking what index it is occuring at within the alphabet (aka alphabet.index("char")) and then subtracting one (to get the index before to similate accessing the letter before it.)
        #For example: 
          #index_of_previous = alphabet.index(string_input[1]) - 1
          #index_of_previous = alphabet.index("b") - 1
          # alphabet.index("b") = 1
          #index_of_previous = 1 - 1
          #index_of_previous = 0
      string_input[index] = alphabet[index_of_previous] #still within the condition, it is reassigning that new index found above to alphabet, so that now whatever index you are on in the string input, is now equal to this character.
          #For example:
          #string_input[index] = alphabet[0]
          # alphabet[0] = "a"
          #string_input[index] = "a"
          #string_input[3] = "a" <= "a" is now newly assigned to the index of the string_input that the loop was at currently
    end
    index += 1 #This makes the loop run again
  end

  puts string_input
  return string_input #return is requesting the output so we can potentially use it
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