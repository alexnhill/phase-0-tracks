
#method to change letters:
	#turn string to an array and downcase to be able to check conditions
	#if else statement to flow through vowel/consonant.
	#searches vowe/consonant arrays to match the values with letters in name index.
	#use built in rotate method to advance through array when condition matched.
	#handles edge cases with elsif
	#turn it back into a string and capitalize


def letter_change(name)
  vowels = ["a", "e", "i", "o", "u"]
  consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z' ]
  name = name.downcase.chars
  name_new = name.map! do |letter| #setting this block equal to name_new
    if vowels.include?(letter) #conditional statements that check to see what letters are vowels. If yes, it rotates the item in the array 1 over.
      vowels.rotate[vowels.index(letter)]
    elsif consonants.include?(letter) #conditional statement to check to see what items in the array are consonants. If yes, rorates the item in the array by 1.
      consonants.rotate[consonants.index(letter)]
    elsif letter[index] == "z" #edge case
      letter[index] == "b"
    elsif letter[index] == "u" #edge case
      letter[index] == "a"  
    end
  end
  name_new.join('').capitalize #transforms the array into a string and capitalizes it 
end

#method that swaps first and last names

def name_swap(first, last) #pulls in two parameters
  new_first = '' #defines a new_first name var
  new_last = '' #defines a new_last name var
		new_first << letter_change(first) #assigns result of the letter change method once the argument has been passed in.
		new_last << letter_change(last) #assigns result of the letter change method once the argument has been passed in.
	puts (new_last + ' ' + new_first) # prints the result- the new name with the order swapped (last, first)
end	

#hash that stores first/last old and new_first

code_names = {
  first_name: [],
  last_name: [],
  new_first: [],
  new_last: []
}

#takes names (UI)

loop do
puts "enter your first name or type 'quit' when you're done!"
first_name = gets.chomp.to_s
code_names[:first_name].push(first_name)
break if first_name == 'quit' 

puts "enter your last name or type 'quit' when you're done!"
last_name = gets.chomp.to_s
code_names[:last_name].push(last_name)
break if last_name == 'quit'

name_swap(first_name, last_name)

p code_names

end

#NOTE: When I got to the last release, I realized my program wouldnt be able to store new_first and new_last unless I accepted the first and last names together as the initial inputs from the user. I wasn't able to figure out how to flip the first and last without doing .reverse, which wouldnt swap the order of first and last. 

