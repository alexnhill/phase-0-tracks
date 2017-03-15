
def youreold
  first = "Bob"
  last = "Jones"
	puts "What's your age?"
  age = gets.chomp
  puts "You are #{age} years old!"
  yield(first, last)
end

youreold { |first, last| puts "Your name is #{first} #{last}!" }