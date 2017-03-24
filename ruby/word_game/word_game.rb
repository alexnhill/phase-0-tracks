# WORD GAME

class WordGame
attr_writer :secret_word, :placeholder_word

	def initialize(word)
		@secret_word = word.chars
		#@placeholder_word = ((secret_word.length) * "-")
	end

	def guess(char)
		num_guesses = secret_word.length * 2
		puts "You have #{num_guesses} number of guesses. Enter a letter to begin guessing."
		if secret_word.include?(char)
	end

	if vowels.include?(letter) #conditional to check if the letter is in the vowels array above
      vowels.rotate[vowels.index(letter)]
  	end
end
