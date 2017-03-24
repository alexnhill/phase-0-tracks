
require_relative 'word_game'

describe WordGame do
	let(:word) { TodoList.new("peaches") }

 it "stores the secret word given as an array upon initialization" do
    expect(WordGame.secret_word).to eq ["p", "e", "a", "c", "h", "e", "s"]
  end

 it "generates a placeholder string for user output" do
 	expect(WordGame.placeholder_word).to eq "-------"
 end

 # it "checks to see if letter guessed is part of secret word" do 
 # 	expect(secret_word.guess) to eq "- - - - - - -"
 # end 

end

  # it "stores the list items given on initialization" do
  #   expect(list.get_items).to eq ["do the dishes", "mow the lawn"]
  # end