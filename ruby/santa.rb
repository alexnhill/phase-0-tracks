#RELEASE 0

class Santa

	def initialize
		puts "Initializing Santa instance ..."
	end	

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!" 
	end	

end


rob = Santa.new
rob.speak
rob.eat_milk_and_cookies("snickerdoodle")