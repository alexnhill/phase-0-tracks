# WORD GAME

class WordGame
attr_accessor :secret_word, :previous_guesses, :count_guesses, :guess_checker, :placeholder_word, :num_guesses
attr_reader :game_over

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
		 	@guess_counter += 0
		 else
		 	@guess_counter += 1
		 end
  	end

	def guess_checker(char)
		 while @secret_word.include?(char)
		 	@placeholder_word[@secret_word.index(char)] = char
		  	@secret_word[@secret_word.index(char)] = 3
		  end
		  puts @placeholder_word.join
		 count_guesses(char)
		 game_end
		 @previous_guesses << char
		 return @placeholder_word.join
	end

  def game_end
    if @guess_counter == @num_guesses
		puts "Ha! Game over, nice try :P"
		@game_over = true
	elsif @placeholder_word.join('') == @key_word
		puts "Nice job, you got it!"
		@game_over = true
	else	
		puts "You have #{@num_guesses - @guess_counter} out of #{@num_guesses} guesses. Enter a letter to guess."
		@game_over = false
 	end
  end
  
 end

# DRIVER CODE / UI

guesses_arr = "abcdefghijklmnopqrstuvwxyx".chars

#Enter a word to guess
new_word = WordGame.new("peaches")

#Guess the word
 while !new_word.game_over
 	#puts "Guess a letter"
    #letter = gets.chomp
    letter = guesses_arr.sample
    new_word.guess_checker(letter)
 end


#NOTE: I spoke with multiple guides at Office Hours regarding the instructions explaining the driver code handling input and output and after recieving conflicting directions and answers, I built the while loop that sits outside of the class with both a UI portion that accepts user inputs (currently commented out) and selecting random characters from the alphabet as to not require any "human" user input (how it currently functions).

