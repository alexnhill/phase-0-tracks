# RELEASE 0 & 1

class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(x)
    puts "Woof"* x
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




#RELEASE 2

=begin

Create kitten class
Create initialize method
Define instance methods
	- Napping
    -input: none
    -output:"ZzZzZzZz"
	-Mischief
    -input: thing as a string
    -output: puts "*plays with #{thing}*"
	-Licks
		-input: number_licks as an integer
		-output: integer output

Create counter variable equal to 0
Create empty kitten_array

Create while loop on counter being less than 50
	- Create new instance of Kitten
	- Push new Kitten instance into kitten_array
	- Increment counter value

Iterate over each kitten_array value
	- Call each instance method

=end

class Kitten
  
  def initialize
    puts "Initializing new kitten ..."
  end
  
  def napping
    puts "ZzZzZzZz"
  end
  
  def mischief(thing)
    puts "*plays with #{thing}*"
  end 

  def licks(number_licks)
    clean = number_licks * 10
    puts clean
  end

end

counter = 0

kitten_array = []

while counter < 50
#   kitten_array << (("kitten" + counter) = Kitten.new)
#		("kitten" + counter.to_s) = Kitten.new
    kitten = Kitten.new
  kitten_array.push(kitten)
	counter +=1 
end

kitten_array.each do |x|x.napping
  x.mischief("remote")
  x.licks(5)
end


