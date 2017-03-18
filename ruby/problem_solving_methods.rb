
#Release 0
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


     
#Release 1
def fibonacci_count(n)
   i1 = 0
   i2 = 1
   new_num = 0
   counter = 0
   arr = []
   until n == counter
     arr << i1
     new_num = i1
     i1 = i2
     i2 = new_num + i1
     counter += 1
   end
 p arr
end
         

fibonacci_count(10)


#Release 2