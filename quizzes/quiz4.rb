require 'pry'

numbers = []

puts "Enter a number or (q)uit"
number = gets.chomp


while number != 'q'
	number = number.to_f

	numbers << number

	puts "(e)nter a number or (q)uit"
	number = gets.chomp

end

binding.pry



# numbers.map {|x| x ** 2}












