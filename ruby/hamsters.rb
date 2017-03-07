puts "Hamster's name?"
hamster_name = gets.chomp

puts "Volume level? (from 1-10)"
volume = gets.chomp
volume.to_i

puts "Fur color?"
fur = gets.chomp

puts "Good candidate for adoption? (y/n)"
candidate = gets.chomp

if candidate == "y" || candidate == "Y"
	candidate = true
elsif candidate == "n" || candidate == "N"
	candidate = false
end

puts "Estimated age?"
age = gets.chomp
age.to_i

if age.empty?
	age = nil
end

puts "Hamster name: #{hamster_name}\n Volume level: #{volume} \n Fur color: #{fur} \n Good candidate: #{candidate} \n Estimated age: #{age}" 
