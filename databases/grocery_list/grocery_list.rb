# I decided to design a grocery list tool that could be used by roommates, partners, to designate specifically who should be buying what and where. This can reduce any confusion associated with keeping the fridge stocked. Additionally, having one consolidated list is very helpful!


# PSEUDOCODE

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

# METHODS

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

	def remove(db, item_to_delete)
		db.execute("DELETE FROM groceries WHERE item = ?", item_to_delete)
	end	

	def update_qty(db, new_quantity, item)
		db.execute("UPDATE groceries SET quantity = ? WHERE item = ?", [new_quantity, item])
	end



# UI
 # MENU
 def menu
  puts "\nSelect one of the following options:"
  puts 'Enter 1 to add to the list'
  puts 'Enter 2 to update a quantity'
  puts 'Enter 3 to remove something from the list'
  puts 'Enter 4 to view the whole list'
  puts 'Enter 5 to view just your list' 
  puts "Enter 'q' to quit"
  end

loop do
 menu 
 user_input = gets.chomp.to_i
 break if user_input == 'q'	


case user_input.to_i
  when 1
    puts "Please enter the item you would like to add:"
    item = gets.chomp
    puts "How many of this item would you like to add?"
    qty = gets.chomp.to_i
    puts "What store can you find this item at?"
    store = gets.chomp
    puts "Who is responsible for buying this item?"
    who = gets.chomp

    add_item(db, qty, item, store, who)

  when 2
    puts "For which item would you like to update the quantity of?"
    list = db.execute("SELECT * FROM groceries")
		list.each do |list_item|
			puts "#{list_item['quantity']} #{list_item['item']} at #{list_item['store']} (#{list_item['who']})"
		end
	item = gets.chomp
	puts "Please enter the new quantity amount: "
	new_quantity = gets.chomp.to_i

    update_qty(db, new_quantity, item)

  when 3
    puts "Which item would you like to remove?"
    list = db.execute("SELECT * FROM groceries")
		list.each do |list_item|
			puts "#{list_item['quantity']} #{list_item['item']} at #{list_item['store']} (#{list_item['who']})"
		end
	item = gets.chomp

	remove(db, item)	

  when 4
	view_list(db)

  when 5
  	puts "Enter the name of who's list you would like to view: "
  	who = gets.chomp

  	view_person_list(db, who)

  else 
  	puts "Please try again!"

end
end

