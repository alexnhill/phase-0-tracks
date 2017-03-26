# WORD GAME

class WordGame
attr_accessor :secret_word, :previous_guesses, :game_over, :guess_counter
attr_reader :num_guesses, :placeholder_word, :final_word, :key_word
attr_writer

	def initialize(word)
		@key_word = word
		@secret_word = word.chars
		@guess_counter = 0
		@game_over = false
		@placeholder_word = ("-" * (secret_word.length.to_i)).chars
		@num_guesses = secret_word.length * 2
		@previous_guesses = []
	end

	def count_guesses(char)
		 if @previous_guesses.include?(char)
		 else
		 	@guess_counter += 1
		 end
		puts "You have #{@num_guesses - @guess_counter} out of #{@num_guesses} guesses. Enter a letter to guess."
  	end

	def guess_checker(char)
		 while @secret_word.include?(char)
		 	@placeholder_word[@secret_word.index(char)] = char
		  	@secret_word[@secret_word.index(char)] = 3
		  end
		  puts @placeholder_word.join
		  count_guesses(char)
		 #if self.game_end?
		 	#check win
	end

 end

# UI 

guesses_arr = "abcdefghijklmnopqrstuvwxyx".chars

new_word = WordGame.new("peaches")
#new_word.guess_checker("e") 

 while !new_word.game_over
 	#puts "Guess a letter"
    #letter = gets.chomp
    letter = guesses_arr.sample
    new_word.guess_checker(letter)
    new_word.previous_guesses << letter
 	if new_word.guess_counter == new_word.num_guesses
		puts "Ha! Game over, nice try :P"
		new_word.game_over = true
	elsif new_word.placeholder_word.join('') == new_word.key_word
		puts "Nice job, you got it!"
		new_word.game_over = true
 	end
    #p new_word.previous_guesses
 end

#NOTE: I spoke with multiple guides at Office Hours regarding the instructions explaining the driver code handling input and output and after recieving conflicting directions and answers, I built the while loop that sits outside of the class with both a UI portion that accepts user inputs (currently commented out) and selecting random characters from the alphabet as to not require any "human" user input (how it currently functions).


