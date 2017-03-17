
#takes names (UI)
#method to change letters
	#if else statement to flow through vowel/consonant.
	#use built in rotate method to advance through array
	#

#method that handles the names
	#swaps first and last
	#breaks name into an array
	#replaces it in array once converted
	#turn it back into a string 
		#new_first = new_vowel.join('')
#method that deals with characters 
	#searches to match the value to 
	#finds which index the vowel is in its vowel array
	#increments the vowel array to the next


#next vowel method
#check name against vowels array
#for each char, check if it is in the vowel array,
#if yes, swap the letter for the next
#if character is equal to an item in the array, perform .next?


def letter_change(name)
  vowels = ["a", "e", "i", "o", "u"]
  consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z' ]
  name = name.downcase.chars
  name_new = name.map do |letter|
    if vowels.include?(letter)
      vowels.rotate[vowels.index(letter)]
    elsif consonants.include?(letter)
      consonants.rotate[consonants.index(letter)]
    elsif letter[index] == "z"
      letter[index] == "b"
    end
  end
  name_new.join
end

puts "enter your first name"
first_name = gets.chomp.to_s
letter_change(first_name)

puts "enter your last name"
last_name = gets.chomp.to_s
letter_change(last_name)


