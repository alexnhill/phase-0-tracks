# WORD GAME

class WordGame
attr_accessor :secret_word, :placeholder_word, :game_over, :guess_counter, :previous_guesses, :num_guesses
attr_reader
attr_writer

	def initialize(word)
		@secret_word = word.chars
		@guess_counter = 1
		@game_over = false
		@placeholder_word = ("-" * (secret_word.length.to_i)).chars
		@num_guesses = secret_word.length * 2
		@previous_guesses = []
	end

	def count_guesses(char)
		p guess_counter
		if previous_guesses.include?(char)
			current_guess = 1 + (num_guesses - guess_counter)
		else
			current_guess = num_guesses - guess_counter
		end
		puts "You have #{current_guess} guesses. Enter a letter to guess."
  	end


	def guess_checker(char)
		count_guesses(char)
		  if secret_word.include?(char)
		  	placeholder_word[secret_word.index(char)] = char
		  	puts placeholder_word.join
		  else
		  	puts placeholder_word.join
		  end
		   guess_counter += 1
		  # placeholder_word = secret_word.each do |a| 
		 	# if secret_word.include?(char)
		  #  		placeholder_word[secret_word.index(char)] = char
		  #  	else 
		  #  		a = "-"
		  #  	end
		  #  	placeholder_word.join
		  #  	puts placeholder_word
	   # 	   end
	end

end


# UI 
new_word = WordGame.new("peaches")

 while !new_word.game_over
   puts "Guess a letter"
   letter = gets.chomp
   new_word.guess_checker(letter)
   new_word.previous_guesses << letter
   print new_word.previous_guesses #to show array filling in
   # if !new_word.placeholder_word == new_word.secret_word
   #   	puts "You won!"
   #   	game_over = true
   #  elsif new_word.guess_counter < new_word.num_guesses
  	# 	game_over = false
  	# else letter = 'exit'	
  	# 	game_over = true
  end

#DRIVER CODE

# new_word.num_guesses.times do
new_word.guess_checker("e")
# end


