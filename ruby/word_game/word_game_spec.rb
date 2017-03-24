require_relative 'word_game'

describe WordGame do
	let(:secret_word) { WordGame.new("peaches") }

 it "stores the secret word given as an array upon initialization" do
    expect(secret_word.word_print).to eq ["p", "e", "a", "c", "h", "e", "s"]
  end

  it "generates a placeholder string for user output" do
  	expect(placeholder_word.word_print).to eq ["-", "-", "-", "-", "-", "-", "-"]
  end

 # it "checks to see if letter guessed is part of secret word" do 
 # 	expect(secret_word.guess) to eq "- - - - - - -"
 # end 

end
