
#method to change letters:
	#if else statement to flow through vowel/consonant.
	#searches to match the values with letters in index
	#use built in rotate method to advance through array.
	#handles edge cases with elsif
	#turn it back into a string 
		#new_first = new_vowel.join('')


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
  name_new.join.capitalize
end

#method that swaps first and last names

def name_swap(first, last)
  new_first = ''
  new_last = ''
		new_first << letter_change(first)
		new_last << letter_change(last)
	puts (new_last + ' ' + new_first)	
end	

#takes names (UI)

puts "enter your first name"
first_name = gets.chomp.to_s

puts "enter your last name"
last_name = gets.chomp.to_s

name_swap(first_name, last_name)
