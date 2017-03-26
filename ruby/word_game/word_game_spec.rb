require_relative 'word_game'

describe WordGame do
	let(:new_word) { WordGame.new("peaches") }

 it "stores the secret word given as an array upon initialization" do
    expect(new_word.secret_word).to eq ["p", "e", "a", "c", "h", "e", "s"]
  end

  it "generates a placeholder string for user output" do
  	expect(new_word.placeholder_word).to eq ["-", "-", "-", "-", "-", "-", "-"]
  end

  it "guesses what the secret word is and generates a placeholder response" do
  	expect(new_word.guess_checker("p")).to eq "p------"
  end

  it "increments by 1 every time a guess is made that is not part of the previous guesses" do
  	expect(new_word.count_guesses("p")). to eq 1
  end

  it "game continues to loop if num guesses != guess counter" do
  	expect(new_word.game_end). to eq false
  end

  it "generate a num_guesses instance var with a length double that of the input word" do
   expect(new_word.num_guesses). to eq 14
  end

end
