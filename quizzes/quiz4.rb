require 'pry'

numbers = []
numbers2 = []

puts "(e)nter a number or (q)uit"
number = gets.chomp

while number != 'q'
	number = number.to_i

	numbers << number

	puts "(e)nter a number or (q)uit"
	number = gets.chomp
end
	
puts numbers

numbers2 = numbers.map {|x| x ** 2}

puts numbers2



binding.pry









