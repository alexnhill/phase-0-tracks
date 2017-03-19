=begin

#RELEASE 0

#Write a method that takes an array of integers and an integer to search for. The method should return the index of the item, or nil if the integer is not present in the array. Don't use built-in array methods like .index. You are allowed to use .length and .each.

arr = [42, 89, 23, 1]

def search_array(arr, n) #define an array and 2 parameters (the array, and a number)
 index_counter = 0 #initialize index at 0 to start counter to increment while looping
 result = 0 #define a result var
 arr.each do |number| #for each item in the array, do the following:
   if number == n #define a condition that says if the number in the array is equal to the number passed in, do the following:
     result = index_counter #make the result equal to index counter (whatever the index is set to currently in the loop)
     p result #print this result
   end
 index_counter += 1 #increment by one to move to the next item in the array to do the loop again
 end
end

search_array(arr, 89)


     
#RELEASE 1

#Add a method to your file that takes a number of Fibonacci terms to generate and returns an array of the terms. For example, fib(6) would return [0,1,1,2,3,5]. Your method should work for a large number of terms. To verify your work: the last number in the array generated by fib(100) will be 218922995834555169026. (How can you verify this without having to compare this huge number manually? Be smart with your driver code!)


def fibonacci_count(n)
   i1 = 0 
   i2 = 1 
   new_num = 0 
   counter = 0
   arr = []
   until n == counter
     arr << i1
     p arr
     new_num = i1
     i1 = i2
     i2 = new_num + i1
     counter += 1
     p "value of i1 #{i1}"
     p "value of i2 #{i2}"
     p "value of new_num #{new_num}"
   end
 p arr
end

fibonacci_count(10)

def fib(n)
 fibs = [0, 1]

 while fibs.length < n
   fibs.push(fibs[-1] + fibs[-2])
 end
 
 return fibs
end

fib(40)


=end

#RELEASE 2

#Pseudocode a sorting method that takes an array of integers and uses a sorting algorithm. The method should return a sorted version of the array. Your pseudocode should not be Ruby-specific.

#Psuedocode:
#Take in an array of integers
#keep numbers that are even (delete those that are odd)
#than, sort in reverse order
#return the newly sorted array



def sort(array)
  n = array.length
  swapped = false
#iterate array .each
	array.each do |i|
		if i.even?
	      (n-1).times do |i|
	      if array[i].odd?
	      	array.slice!(i)
	      elsif array[i] < array[i+1]
	        array[i], array[i+1]=array[i+1], array[i]
	        swapped = true
	    	end
	 	end
	 break if not swapped
  	end	
end
end

a = [4, 9, 2, 1, 5, 6, 3]

sort(a)

=begin
#Implement the sorting method in Ruby:

def sort(array)
  n = array.length

  loop do
    swapped = false

    (n-1).times do |i|
      if array[i].odd?
      	array.slice!(i)
      elsif array[i] < array[i+1]
        array[i], array[i+1]=array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  p array
end


a = [4, 9, 2, 1, 5, 6, 3]

sort(a)



NOTES:

Bubble Sort Algorithm:

def bubble_sort(array)
  n = array.length

  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1]=array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

Algorithm with Notes:

def bubble_sort(array)
  n = array.length # n will equal the amount of items in the array
  loop do # iterate through the entire array and check the values of each element and compare them
  		# [1, 4, 1, 3, 4, 1, 3, 3]
  		# [1, 1, 4, 3, 4, 1, 3, 3] swaps 4 and 1
  		# [1, 1, 3, 4, 4, 1, 3, 3] swaps 3 and 4
  		# [1, 1, 3, 4, 4, 1, 3, 3] doesnt do anything because 4 == 4
  		# [1, 1, 3, 4, 1, 4, 3, 3] swaps 1 and 4
  		# [1, 1, 3, 4, 1, 3, 4, 3] swaps 3 and 4
  		# [1, 1, 3, 4, 1, 3, 4, 3] swaps 3 and 4
  		# & so on...
    swapped = false #check and see if an item is false. looking for for what is going to break us out of loop- will be equal to false until very end

    (n-1).times do |i| #total number of items in the array minus one because you want to get rid of the zero index (n-1). .times (it will iterate through it that many times)
      if array[i] > array[i+1] #if the element in array (accessing the element by its index) is greater then the next element (by making adding one to its place in the index)
        array[i], array[i+1] = array[i+1], array[i] (swapping array elements by setting the valiables equal to the opposite one)
        swapped = true # in this case, swapped is true
      end
    end

    break if not swapped #break us out of the loop if swapped is not true
  end

  array
end
=end


