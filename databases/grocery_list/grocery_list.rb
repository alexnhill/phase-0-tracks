# I decided to design a grocery list tool that could be used by roommates, partners, to designate specifically who should be buying what and where. This can reduce any confusion associated with keeping the fridge stocked. Additionally, having one consolidated list is very helpful!


#Pseudocode

#Create a grocery list class
	#initialize with 

#UI will ask what you are trying to do and will connect to methods that will do all of the actions.
	#add to a list
	#check something off
	#see the list
		#view whole list
		#filter who the list items are assigned to
	#update quantity

#Grocery list will have the following categories
	#quantity
	#item
	#which grocery store (East Village Organic, Trader Joes)
	#who is responsible / assigned party

#########################

#require gems
require 'sqlite3'

db = SQLite3::Database.new("groceries.db")
db.results_as_hash = true


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


	def view_list(db)
		list = db.execute("SELECT * FROM groceries")
		list.each do |list_item|
			puts "#{list_item['quantity']} #{list_item['item']} at #{list_item['store']} (#{list_item['who']})"
		end	
	end	

	def view_person_list(db, person)
		list = db.execute("SELECT * FROM groceries WHERE who = ?", person)
		puts "#{person}'s List:"
		list.each do |list_item|
			puts "#{list_item['quantity']} #{list_item['item']} at #{list_item['store']}"
		end	
	end

	def add_item(db, new_quantity, new_item, new_store, new_who)
		db.execute("INSERT INTO groceries (quantity, item, store, who) VALUES (?, ?, ?, ?)", [new_quantity, new_item, new_store, new_who])
	end

	def check_off(db, item_to_delete)
		db.execute("DELETE FROM groceries WHERE item = ?", item_to_delete)
	end	

	def update_qty(db, new_quantity, item)
		db.execute("UPDATE groceries SET quantity = ? WHERE item = ?", [new_quantity, item])
	end



#UI
 # MENU
  puts "\nSelect one of the following options:"
  puts 'Enter 1 to add to the list'
  puts 'Enter 2 to update a quantity'
  puts 'Enter 3 to remove something from the list'
  puts 'Enter 4 to view the whole list'
  puts 'Enter 5 to view just your list' 
  puts "Enter 'q' to quit"

  user_input = gets.chomp.to_i

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

