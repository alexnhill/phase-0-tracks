# WORD GAME

class WordGame
attr_accessor :secret_word, :previous_guesses, :game_over, :guess_counter
attr_reader :num_guesses, :placeholder_word
attr_writer

	def initialize(word)
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
		puts "You have #{@num_guesses - @guess_counter} guesses. Enter a letter to guess."
  	end


	def guess_checker(char)
		 while @secret_word.include?(char)
		 	@placeholder_word[@secret_word.index(char)] = char
		  	@secret_word[@secret_word.index(char)] = 3
		  # if @secret_word.include?(char) #QUESTION: begins counting after third entry of same letter
		  # 	@placeholder_word[@secret_word.index(char)] = char
		  # 	@secret_word[@secret_word.index(char)] = 3 #need to loop or ask again?
		  	#p @secret_word
		  end
		  puts @placeholder_word.join
		  count_guesses(char)
		 if self.game_end?
		 	
		 #  p @placeholder_word
		 #  @placeholder_word = @secret_word.map do |x|
		 # 	x.gsub(x, char) #QUESTION: how to implement gsub- unsure of syntax
		 # end
		 # 	p @placeholder_word
		 # 	puts @placeholder_word.join('')
	end

	def game_end? 
	    if new_word.guess_counter == new_word.num_guesses
		#puts "Ha! Game over, nice try :P"
			true
		elsif 	new_word.placeholder_word == new_word.secret_word
		#puts "Nice job, you got it!"
			true
 		end	
 	end	




 end



	#QUESTION: Implement UI logic into predicate method.. what is syntax? how and where would I call this if not outside method?
	# 	while game_over == false
	# 	if @guess_counter == @num_guesses
	# 		puts "Game over, nice try :P"
	# 		@game_over = true
	# 	if 	@placeholder_word == @secret_word
	# 		puts "Nice job, you got it!"
	# 		@game_over = true
	# 	end	
	# end

end


# UI 
new_word = WordGame.new("peaches")

new_word.guess_checker("a")
new_word.guess_checker("a")
new_word.guess_checker("a")
#make an array to feed in the chars to the guess_checher method

 while !new_word.game_over
    puts "Guess a letter"
    letter = gets.chomp

    new_word.guess_checker(letter)
    new_word.previous_guesses << letter
    #p new_word.previous_guesses

    if new_word.guess_counter == new_word.num_guesses
		puts "Ha! Game over, nice try :P"
		true
	elsif 	new_word.placeholder_word == new_word.secret_word
		puts "Nice job, you got it!"
		true
 	end	
 end
end


#DRIVER CODE
#new_word.guess_checker("p")



