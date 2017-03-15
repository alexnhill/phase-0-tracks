
# METHOD THAT TAKES A BLOCK

=begin
def youreold
  first = "Bob"
  last = "Jones"
	puts "What's your age?"
  age = gets.chomp
  puts "You are #{age} years old!"
  yield(first, last)
end

youreold { |first, last| puts "Your name is #{first} #{last}!" }
=end

students = ["Bob", "Amy", "Mary", "Kim", "Tony", "Rob"]

pets = {cat: "kitten", dog: "puppy", deer: "doe", cow: "calf", goat: "kid", bear: "cub"}

#before
p "Before call:"
p students
p pets

#iterate array .each
students.each do |student|
 puts "Hi, #{student}!"
end

#iterate hash .each
pets.each do |adult, child|
	puts "The #{child} becomes a(n) #{adult}!"
end 

#iterate array .map!
students.map! do |student|
	student + "!"
end  

#after
p "After call"
p students
p pets