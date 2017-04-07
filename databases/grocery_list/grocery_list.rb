#Pseudocode

#Create a grocery list class

#UI will ask what you are trying to do and will connect to methods that will do all of the actions.
	#add to a list
	#check something off
	#see the list

#Grocery list will have the following categories
	#quantity
	#item
	#which grocery store (East Village Organic, Trader Joes)

#########################

#require gems
require 'sqlite3'

#create SQLite3 database
db = SQLite3::Database.new("groceries.db")

# create a groceries table (if it's not there already)
create_groceries_tbl = <<-SQL
  CREATE TABLE IF NOT EXISTS kittens(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
  )
SQL

db.execute(create_groceries_tbl)

#UI
p "What are you trying to do? \n Please input the number corresponding to what you would like to do: \n 1- Add to the list \n 2- Remove something from the list \n 3- View the list"
user_input = gets.chomp
if user_input == 1 
 #directs to add to list method
elsif user_input == 2
	#directs to delete from list method
elsif user_input == 3
	#directs to view the list method
else puts "What?"
end

