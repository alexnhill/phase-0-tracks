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

item = "potato"
items = "sugar apple banana soda"
quantity = 1 #define quantity
list = create_list(items, quantity)
add_item(list, item, quantity)

# # Method to remove an item from the list
# # input:
# # steps:
# # output:

# # Method to update the quantity of an item
# # input:
# # steps:
# # output:

# # Method to print a list and make it look pretty
# # input:
# # steps:
# # output: