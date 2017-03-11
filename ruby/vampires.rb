
puts "How many employees will be processed?"
employees = gets.chomp.to_i

employees.times do

	puts "What is your name?"
	vamp_name = gets.chomp

	puts "How old are you?"
	age = gets.chomp

	puts "What year were you born?"
	birth_year = gets.chomp

	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	garlic_bread = gets.chomp

	puts "Would you like to enroll in the company’s health insurance? y/n"
	health_insurance = gets.chomp

	puts "Do you have any allergies? Type 'done' when finished."
	allergies = 0
	loop do
		allergies = gets.chomp
		break if allergies == "sunshine"
		break if allergies == "done" 
	end		

	correct_age = age.to_i == 2017-birth_year.to_i

	incorrect_age = age.to_i != 2017-birth_year.to_i

	no_garlic = garlic_bread == "n"

	yes_garlic = garlic_bread == "y"

	no_insurance = health_insurance == "n"

	yes_insurance = health_insurance == "y"

	if correct_age && (yes_garlic || yes_insurance)
		vampire = "Probably not a vampire."
	elsif incorrect_age && (no_garlic || no_insurance)
		vampire = "Probably a vampire."
	elsif incorrect_age && no_garlic && no_insurance
		vampire = "Almost certainly a vampire."
	elsif vamp_name == "Drake Cula" || vamp_name == "Tu Fang"
		vampire = "Definitely a vampire."	
	elsif allergies == "sunshine"
		vampire = "Probably a vampire."
	else
		vampire = "Results inconclusive."	
	end	

	puts "#{vampire}"

end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
