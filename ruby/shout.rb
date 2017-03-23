
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
end	

class Cheerleader
	include Shout
end	

# RELEASE 1 DRIVER CODE
# p Shout.yell_happily(Shout.yell_angrily("Hi!"))
# p Shout.yell_angrily("hi")
# p Shout.yell_happily("hi")

# RELEASE 3 DRIVER CODE

dad = Angry_dad.new
p dad.yell_angrily("no")

sally = Cheerleader.new
p sally.yell_happily("yay")