#RELEASE 0

class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end	

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!" 
	end	

	def celebrate_birthday
		new_age = @age + 1
		puts new_age
	end

	def get_mad_at(reindeer_name)
		current_index = @reindeer_ranking.index(reindeer_name)
		@reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(current_index))
		puts @reindeer_ranking
	end

	# #setter methods
	# def gender=(new_gender)
	# 	@gender = new_gender
	# 	p new_gender
	# end

	# #getter methods
	# def age
	# 	@age
	# end

	# def ethnicity
	# 	@ethnicity
	# end	
end


#Release 4




#Release 0 Driver Code
# rob = Santa.new
# rob.speak
# rob.eat_milk_and_cookies("snickerdoodle")
# rob.initialize

#Release 1 Driver Code
# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female,", "Latino")
# santas.push(Santa.new("bigender", "white"))
# p santas

# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

# example_genders.length.times do |i| #this loops 7 times (length of example_genders) and assigns a new identity (with required parameters)
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end
# p santas

#Release 2 & 3 Driver Code
 # rob = Santa.new("undecided", "white")
 # rob.celebrate_birthday
 # rob.get_mad_at("Dancer")
 # rob.gender = "undecided"
 # p rob.gender
 # p rob.age
 # p rob.ethnicity






