
# this is a comment

puts "Do you want to (a)dd, (s)ubtract, (m)ultiply, (d)ivide or (q)uit?"
response = gets.chomp
while response != 'q'
	puts "First?"
	first = gets.to_f
	puts = "Second?"
	second = gets.to_f

	if response == 'a'
		total = first + second
	else response == 's'
		total = first - second
	end

	if response == 'm'
		total = first * second
	else response == 'd'
		total = first / second 
	end

	puts "The result of #{first} and #{second} is #{total}"
	puts "Do you want to (a)dd, (s)ubtract (m)ultiply, (d)ivide or (q)uit?"
	response = gets.chomp

end







