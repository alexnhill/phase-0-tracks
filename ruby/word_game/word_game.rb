# WORD GAME

class WordGame
attr_accessor :secret_word, :placeholder_word, :game_over, :guess_counter, :previous_guesses

	def initialize(word)
		@secret_word = word.chars
		@guess_counter = 0
		@game_over = false
		@placeholder_word = ("-" * (secret_word.length.to_i)).chars
		@previous_guesses = []
	end

	def count_guesses(char)
		num_guesses = secret_word.length * 2
		if previous_guesses.include?(char)
			current_guess = num_guesses - guess_counter
		else	
			guess_counter =+ 1
			current_guess = num_guesses - guess_counter
		end
		puts " You have #{current_guess} guesses. Enter a letter to guess."
  	end


	def guess_checker(char)
		if secret_word.include?(char)
			placeholder_word[secret_word.index(char)] = char
			print placeholder_word
		end	
		count_guesses(char)
		previous_guesses << char
	end

end


#DRIVER CODE
new_word = WordGame.new("peaches")

new_word.guess_checker("a")

# while !new_word.game_over
 # 	if placeholder_word == secret_word
 # 		game_over = true
 #  elsif num_guesses == guess_counter
 # 		game_over = true
 # 	else guess_counter < num_guesses 
 # 		 "try again"
 # 		game_over = false
 # end