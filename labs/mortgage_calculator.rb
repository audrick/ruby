# require 'pry'
def payment (amount, i, n)
	total = (i/100/12) * amount / (1 - ((1 + (i/100/12)) ** (-(n)*12))) 
end

puts "Welcome to the Mortgage Calculator.  Would you like to make a calculation? (y)es or (n)o"
response = gets.chomp

while response != 'n'

	puts "Principal Amount?"	
	amount = gets.to_f
	puts "Interest Rate?"
	i = gets.to_f
	puts "Period?"
	n = gets.to_i
	total = payment(amount,i, n)

	puts "The result of #{amount}, #{i}, and #{n} is #{total} dollars per month"
	puts "Welcome to the Mortgage Calculator.  Would you like to make a calculation? (y)es or (n)o"
	response = gets.chomp
end
