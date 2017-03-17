
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
  name_new = name.map do |letter|
    if vowels.include?(letter)
      vowels.rotate[vowels.index(letter)]
    elsif consonants.include?(letter)
      consonants.rotate[consonants.index(letter)]
    elsif letter[index] == "z"
      letter[index] == "b"
    elsif letter[index] == "u"
      letter[index] == "a"  
    end
  end
  name_new.join('').capitalize
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

loop do
puts "enter your first name"
first_name = gets.chomp.to_s
break if first_name == 'quit' 

puts "enter your last name"
last_name = gets.chomp.to_s
break if last_name == 'quit'

name_swap(first_name, last_name)

end
