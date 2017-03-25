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
  	expect(new_word.guess_checker("p")). to eq "p------"
  end

end
