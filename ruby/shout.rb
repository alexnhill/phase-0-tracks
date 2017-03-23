

module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end	
	def self.yell_happily(words)
		words + "yiipeee!" + " :)"
	end	
end

# DRIVER CODE
#p Shout.yell_happily(Shout.yell_angrily("Hi!"))
# p Shout.yell_angrily("hi")
# p Shout.yell_happily("hi")