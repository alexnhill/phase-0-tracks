# Your grocery list has the following minimum requirements. You will need to have separate methods for each of the following use cases:

# Create a new list
# Add an item with a quantity to the list
# Remove an item from the list
# Update quantities for items in your list
# Print the list (Consider how to make it look nice!)
# We've gotten you started:


# # Method to create a list
# # input: string of items separated by spaces (example: "carrots apples cereal pizza")
# # steps: 
#   # pull string apart and insert them into an an array using .split method
#   # set default quantity
#   # print the list to the console [can you use one of your other methods here?]
# # output: hash {item_name, quantity}

# Method to create a list
def create_list(items, quantity) 
	list = {}
	split_items = items.split(" ")
	split_items.each do |food|
		list[food] = quantity
	end
	list
end

# # Method to add an item to a list
# # input: list, item name, and optional quantity
# # steps: store data into our hash
# # output: new list as a hash

def add_item(list, item, quantity)
	list[item] = quantity
	#puts "This is the output of a method to add an item to a list:"
	#p list
end

# # Method to remove an item from the list
# # input: the item in the list (as a key)
# # steps: remove item/key from hash
# # output: updated hash/list

def remove_item(list, item)
	list.delete(item)
	#puts "This is the output of a method to remove an item from the list:"
	#p list
end

# # Method to update the quantity of an item
# # input: the list, item for which to update quantity, new quantity
# # steps: 
# # output: updated hash/list

def item_quantity(list, item, quantity)
	list[item] = quantity
	#puts "This is the output of updating the quantity of an item:"
	#p list
end	

# # Method to print a list and make it look pretty
# # input: takes in list
# # steps: print each key/value pair in hash
# # output: neatly printed hash

def print_list(list) #method that talks to the user- displays data to user
	puts "------------------"
	puts "Grocery List:"
	list.each do |food, quantity|
		puts "#{quantity} #{food}"
	end
	puts "------------------"	
end	



# Method Calls

#item = "potato"
items = ""
quantity = 1 #define quantity
list = create_list(items, quantity)
add_item(list, "lemonade", 2)
add_item(list, "tomatoes", 3)
add_item(list, "onions", 1)
add_item(list, "ice cream", 4)
item_quantity(list, "ice cream", 1)
remove_item(list, "lemonade")
print_list(list)


#REFLECT

# What did you learn about pseudocode from working on this challenge?
	# I learned how helpful it can be when planning out your program and can be a great way to wrap your head around how you want to organize your code.
# What are the tradeoffs of using arrays and hashes for this challenge?
	# Arrays seem simpler to work with because they done have two parameters (key/value) but the way we nested the array within the hash was a good solution for this prompt.
# What does a method return?
	# A method returns the last expression it evaluated.
# What kind of things can you pass into methods as arguments?
	# You can pass it all kinds of data types and structures.
# How can you pass information between methods?
	# Passing information between methods can be done by nesting method calls. Whatever the return value is can then be called on by other functions!
# What concepts were solidified in this challenge, and what concepts are still confusing?
	# This challenge helped me gain a little more confidence with the material. It's still pretty new and I understand the concepts in theory but need a little bit more practice in their application. Having Tam there to guide and confirm what we already knew helped establish that confidence with the material.





