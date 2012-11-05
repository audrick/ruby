
# this is a comment

puts "Do you want to (a)dd, (s)ubtract, (m)ultiply, (d)ivide, (p)ower, (sq)uareroot or (q)uit?"
response = gets.chomp
while response != 'q'
	puts "First?"
	first = gets.to_f
	puts "Second?"
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

	if response == 'p'
		total = first ** second
	else response == 'sq'
		total = Math.sqrt(first)
	puts "The result of #{first} is #{total}"
	end

	puts "The result of #{first} and #{second} is #{total}"
	puts "Do you want to (a)dd, (s)ubtract (m)ultiply, (d)ivide, (p)ower, (sq)uareroot or (q)uit?"
	response = gets.chomp

end


