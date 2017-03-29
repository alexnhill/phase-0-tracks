
#method to change letters:
	#turn string to an array and downcase to be able to check conditions
	#if else statement to flow through vowel/consonant.
	#searches vowe/consonant arrays to match the values with letters in name index.
	#use built in rotate method to advance through array when condition matched.
	#handles edge cases with elsif
	#turn it back into a string and capitalize


#method that handles the breakdown and rebuild of the names, once the letters have been changed in the letter_change method
def name_handler(name)
  name = name.downcase.chars #takes the input and makes it downcase and breaks it into an array to increment through
  name_new = name.map do |letter| #create a new array called name_new and start block to increment through each array
    letter_change(letter)
  end
  #Code addressing capitalization and swapping first / last
  namearr = name_new.join('') #join the new_name array back into a string
  namearr2 = namearr.split #re-seperate it into two index items
  first_name = namearr2[0] #assign first name to a new variable based on index
  last_name = namearr2[1] #assign first name to a new variable based on index
  name_new = last_name.capitalize! + " " + first_name.capitalize! #capitalize and swap first for last
end

#helper method to change names
def letter_change(letter)
vowels = ["a", "e", "i", "o", "u"]
consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z' ]
 if vowels.include?(letter) #conditional to check if the letter is in the vowels array above
      vowels.rotate[vowels.index(letter)] #within the vowels array.rotate over by one[the index of the letter in the vowels array]
  elsif consonants.include?(letter) #conditional to check if the letter is in the consonant array defined above
      consonants.rotate[consonants.index(letter)] #because this has met the above condition, we know that the char exists in the array. we are asking for the index of the letter in the consonants array and from there are rotate to the next by one. This movement is being saved into the new name_new array.
  elsif letter == "z"  #edge case
      letter == "b"
  elsif letter == "u" #edge case
      letter == "a"  
  elsif letter == " " #edge case
      letter = " " 
  end
end

#method that takes in the values and then prints & returns them

def name_swap(real_name)
	new_name = name_handler(real_name)
  puts new_name
  return new_name
end	


#hash that stores first/last old and new_first

code_names = {}


#takes names (UI)

loop do
puts "Enter your first and last name or type 'quit' when you're done!"
real_name = gets.chomp
if real_name == 'quit' 
  p code_names
  break
 end 

code_names[real_name] = (name_swap(real_name))

end
