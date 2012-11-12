# prompt user for a number

# number will go into a variable called response 
# response.explode.... it will cause an error

# prevent the error from happening


# "the square of 10 is 100"

require 'pry'

puts "Enter a number or (q)uit"
response = gets.chomp

	while response != 'q'
		begin
	       response.explode
		   puts "the square of #{x} is x * x"
		rescue
		end
	end

binding.pry

