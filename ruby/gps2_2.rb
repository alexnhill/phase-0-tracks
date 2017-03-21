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
	p list
end

# # Method to remove an item from the list
# # input: the item in the list (as a key)
# # steps: remove item/key from hash
# # output: updated hash/list

def remove_item(list, item)
	list.delete(item)
	p list
end

# # Method to update the quantity of an item
# # input: the list, item for which to update quantity, new quantity
# # steps: 
# # output: updated hash/list

def item_quantity(list, item, quantity)
	list[item] = quantity
	p list
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


#UI

#puts "Please add items to a list"
#items = gets.chomp



#Test Code

item = "potato"
items = "sugar apple banana soda"
quantity = 1 #define quantity
list = create_list(items, quantity)
add_item(list, item, quantity)
remove_item(list, "sugar")
item_quantity(list, "apple", 3)
print_list(list)


