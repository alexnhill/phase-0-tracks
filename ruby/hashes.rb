
# Ask user for information in form- repeat for every field
	#Name
	#Age
	#Number of kids
	#Decor theme
	#Like modern? boolean
	#like antique? boolean
#Change user inputs to appropriate data type
#Store each value in key within hash
#Print hash when form complete
#Ask user if they need to make any changes to keys
	#If none, end program
	#If yes, 
		#ask for a new value and update the corresponding key
		#change string into symbol
		#print latest version of hash


# USER INTERFACE

puts "What is your name?"
clientname = gets.chomp

puts "How old are you?"
clientage = gets.chomp.to_i

puts "How many kids do you have?"
num_kids = gets.chomp.to_i

puts "What is your decor theme?"
decor_theme = gets.chomp

puts "Do you like modern design? (y/n)"
like_modern = gets.chomp
if like_modern == "y"
	like_modern = true
else 
	like_modern = false
end		

puts "Do you like antiques? (y/n)"
like_antique = gets.chomp
if like_antique == "y"
	like_antique = true
else 
	like_antique = false
end	


# STORE & PRINT

clientinfo = {
	name: clientname,
	age: clientage,
	kids: num_kids,
	decor: decor_theme,
	modern: like_modern,
	antique: like_antique
}

puts clientinfo

# ARRAY OPTION
=begin
clientarray = []
clientarray << clientinfo
p clientarray
=end

# UPDATE KEY OPTION

puts "Would you like to update one of the categories? If yes, please enter the category you would like to update. If not, please type none."
updateq = gets.chomp
if updateq != "none"
	puts "Please provide a new input."
	newvalue = gets.chomp
	clientinfo[updateq.to_sym] = newvalue
	puts clientinfo
end	


