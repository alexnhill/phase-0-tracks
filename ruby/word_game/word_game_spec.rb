require_relative 'word_game'

describe WordGame do
	let(:new_word) { WordGame.new("peaches") }

 it "stores the secret word given as an array upon initialization" do
    expect(new_word.secret_word).to eq ["p", "e", "a", "c", "h", "e", "s"]
  end

  it "generates a placeholder string for user output" do
  	expect(new_word.placeholder_word).to eq ["-", "-", "-", "-", "-", "-", "-"]
  end

  it "creates a key_word based from argument passed in upon intizalization" do
    expect(new_word.key_word). to eq "peaches"
  end

  it "creates a guess_counter variable upon intizalization" do
    expect(new_word.guess_counter). to eq 0
  end

  it "creates a game_over var that is false upon initialization" do
    expect(new_word.game_over). to eq false
  end
  
  it "generate a num_guesses instance var with a length double that of the input word" do
   expect(new_word.num_guesses). to eq 14
  end

  it "creates an empty array upon initialization for @previous_guesses" do
    expect(new_word.previous_guesses). to eq []
  end

  it "guesses what the secret word is and generates a placeholder response" do
  	expect(new_word.guess_checker("p")).to eq "p------"
    expect(new_word.guess_checker("e")).to eq "pe---e-"
  end

    it "updates the secret_word variable so that a letter is no longer 'available' to guess" do
    new_word.guess_checker("p")
    new_word.guess_checker("e")
    expect(new_word.secret_word). to eq [3, 3, "a", "c", "h", 3, "s"]
  end

  it "increments by 1 every time a guess is made that is not part of the previous guesses" do
  	new_word.guess_checker("e")
    new_word.guess_checker("x")
    new_word.guess_checker("u")
    expect(new_word.count_guesses("p")). to eq 4
  end
 
  it "does not increment if a guess is a repeat" do
     new_word.guess_checker("e")
    new_word.guess_checker("e")
    expect(new_word.guess_counter). to eq 1
  end

  it "game continues to loop if num guesses != guess counter" do
  	expect(new_word.game_over?). to eq false
  end

  it "game ends when secret_word is guessed" do
    new_word.guess_checker("p")
    new_word.guess_checker("e")
    new_word.guess_checker("a")
    new_word.guess_checker("c")
    new_word.guess_checker("h")
    new_word.guess_checker("s")
    expect(new_word.game_over?). to eq true
  end

  it "game ends when run out of guesses" do
    new_word.guess_checker("o")
    new_word.guess_checker("r")
    new_word.guess_checker("w")
    new_word.guess_checker("q")
    new_word.guess_checker("y")
    new_word.guess_checker("t")
    new_word.guess_checker("b")
    new_word.guess_checker("v")
    new_word.guess_checker("m")
    new_word.guess_checker("n")
    new_word.guess_checker("z")
    new_word.guess_checker("p")
    new_word.guess_checker("y")
    new_word.guess_checker("c")
    new_word.guess_checker("a")
    expect(new_word.game_over?). to eq true
  end

end
