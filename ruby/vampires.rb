
puts "How many employees will be processed?"
employees = gets.chomp

employees_loop = 0

until employees.to_i == employees_loop
	employees_loop +=1

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
	loop do
		allergies = gets.chomp	
			if allergies == "sunshine"
				vampire = "Probably a vampire."
				puts "#{vampire}"
				next
			elsif allergies == "done"
				break	
			end
		end	

	if age.to_i == 2017-birth_year.to_i && (garlic_bread == "y" || health_insurance == "y")
		vampire = "Probably not a vampire."
		puts "#{vampire}"
	elsif age.to_i != 2017-birth_year.to_i && (garlic_bread == "n" || health_insurance == "n")
		vampire = "Probably a vampire."
		puts "#{vampire}"
	elsif age.to_i != 2017-birth_year.to_i && garlic_bread == "n" && health_insurance == "n"
		vampire = "Almost certainly a vampire."
		puts "#{vampire}"
	elsif vamp_name == "Drake Cula" || vamp_name == "Tu Fang"
		vampire = "Definitely a vampire."
		puts "#{vampire}"
	elsif allergies == sunsine	
		vampire = "Probably a vampire."
		puts "#{vampire}"
	else
		vampire = "Results inconclusive."	
		puts "#{vampire}"
	end	

	puts "Name: #{vamp_name} \nAge: #{age} \nYear of birth: #{birth_year} \nGarlic Bread(y/n): #{garlic_bread} \nHealth Insurance(y/n): #{health_insurance} \nVampire: #{vampire}"
end
