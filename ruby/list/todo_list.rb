

class TodoList
	def initialize(activity)
		@list = activity
	end

	def get_items
		@list
	end	

	def add_item(new_item)
		@list << new_item
	end

	def delete_item(item_to_delete)
		@list.delete(item_to_delete)
	end	

	def get_item(item)
		@list.index(item)

end