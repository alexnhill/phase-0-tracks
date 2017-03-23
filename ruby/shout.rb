
# RELEASE 1
# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end	
# 	def self.yell_happily(words)
# 		words + "yiipeee!" + " :)"
# 	end	
# end

# RELEASE 3

module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end	
	
	def yell_happily(words)
		words + "yiipeee!" + " :)"
	end	
end


class Angry_dad
	include Shout
	attr_reader :age
	attr_accessor :name, :hair

	def initialize(name, hair)
		@name = name
		@hair = hair #hair would be a boolean
		@age = rand(50..90)
	end
	
	def wife(reply)
		puts "#{name}, did you put the laundry in the dryer?"
		puts yell_angrily(reply)
	end	

	def has_hair(hair_answer)
		puts "Does dad have hair?"
		if hair_answer == "yes"
			hair = true
			puts "Miraculously"
		elsif hair_answer  == "no"
			hair = false
			puts "Dad says: #{yell_angrily(hair_answer)}"
		else
			puts "Probably not"	
		end
	end	

end	

class Cheerleader
	include Shout
	attr_accessor :cheer, :team
	attr_reader 

	def initialize(cheer)
		@cheer = cheer
		@team = ["titans", "bears"]
	end	
end	

# RELEASE 1 DRIVER CODE
# p Shout.yell_happily(Shout.yell_angrily("Hi!"))
# p Shout.yell_angrily("hi")
# p Shout.yell_happily("hi")

# RELEASE 3 DRIVER CODE
dad = Angry_dad.new("Mark", false)
puts "Do you still have hair, #{dad.name}?"
puts dad.yell_angrily("no")

sally = Cheerleader.new("go!")
puts sally.yell_happily("#{sally.cheer} #{sally.team[0]} #{sally.cheer} ")


# ADDT'L DRIVER CODE FOR TESTS!
# dad = Angry_dad.new("Mark", false)
# dad.wife("No")
# p dad.hair
# dad.has_hair("yes")


