# $100.00 in pocket

# Travel Distance = 200 miles
# How fast = 50 mph

# estimated travel time = 4 hours


# Price of gas = $3.00 gallon

# MPG of car = 20 MPG

# e.g., to travel 200 miles, the car will need 10 gallons, which will cost a total of $30.00 of gas
# after 4 hours, the driver will have $70.00 in his pocket.


puts "Welcome to the Trip Calculator. Do you need help with calculating your trip? (y)es or (n)o"
response = gets.chomp

while response != 'n'

	puts "How far are you traveling?"
	miles = gets.to_f

	puts "How fast are you going?"
	mph = gets.to_f

	puts "How much is your gas? (per gallon)"
	price = gets.to_f

	puts "What is the MPG of your car?"
	mpg = gets.to_i

	puts "How much money do you have?"
	cash = gets.to_f

	#gallons required
	g = miles / mpg

	#trip cost
	trip = g * price

	#balance
	bal = cash - trip

	#trip time
	time = miles / mph

		if cash >= trip
			puts "You will arrive in #{time} hours with $#{bal} left"

			elsif cash < trip
				puts "You don't have enough money for your trip"
		end

	puts "Welcome to the Trip Calculator. Do you need help with calculating your trip? (y)es or (n)o"
	response = gets.chomp

end

	





