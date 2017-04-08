#Pseudocode

#Create a grocery list class
	#initialize with 

#UI will ask what you are trying to do and will connect to methods that will do all of the actions.
	#add to a list
	#check something off
	#see the list- filter who the list items are assigned to
	#update quantity

#Grocery list will have the following categories
	#quantity
	#item
	#which grocery store (East Village Organic, Trader Joes)
	#who is responsible / assigned party

#########################

#require gems
require 'sqlite3'

#Grocery_List Class

class Grocery
	db = SQLite3::Database.new("groceries.db")

	def initialize
		create_table_cmd = <<-SQL
  			CREATE TABLE IF NOT EXISTS groceries(
	    		id INTEGER PRIMARY KEY,
			    quantity INT,
			    item VARCHAR(255),
			    store VARCHAR(255),
			    who VARCHAR(255)
			  );
			SQL
		db.execute(create_table_cmd)
	end

	def view_list
		db.execute("SELECT * FROM groceries")
	end	

	def view_person_list(person)
		db.execute("SELECT * FROM groceries where name = ?", person)
	end

	def add_item(new_quantity, new_item, new_store, new_who)
		db.execute("INSERT INTO groceries (quantity, item, store, who) VALUES (? , ?, ?, ?)", [new_quantity, new_item, new_store, new_who])
	end

	def check_off(item_to_delete)
		db.execute("DELETE FROM groceries WHERE item = ?", item_to_delete)
	end	

	def update_qty(item, new_quantity)
		db.execute("UPDATE groceries SET quantity = ? WHERE item = ?" [quantity, item])
	end

end

#UI
# p "What are you trying to do? \n Please input the number corresponding to what you would like to do: \n (1) Add to the list \n (2) Remove something from the list \n (3) View the list"
# user_input = gets.chomp.to_i
# if user_input == 1 
#  	#directs to add to list method
#  	puts "1"
# elsif user_input == 2
# 	#directs to delete from list method
# 	puts "2"
# elsif user_input == 3
# 	#directs to view the list method
# 	puts "3"
# end

# #add to list method
# def add_item
#   puts "Please type the item you would like to add"
#   new_item = gets.chomp
#   puts "Please enter the quantity of that item"
#   item_qty = gets.chomp.to_i
#   puts "What market can you find the item at"
#   market = gets.chomp
#   db.execute("INSERT INTO groceries (name, age) VALUES (?, ?)", [name, age])
# end

