class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(x)
    puts "Woof"*x
  end
  
  def roll_over
    puts "*rolls over*"
  end
  
  def dog_years(x)
    age = x * 7
    puts age
	end
  
  def high_five
    puts "paw five!"
  end 
  
  def initiaize
    puts "Initializing new puppy instance ..."
  end
  
end

new_puppy = Puppy.new
new_puppy.fetch("bone")
new_puppy.speak(4)
new_puppy.roll_over
new_puppy.dog_years(2)
new_puppy.high_five
second_puppy = Puppy.new
