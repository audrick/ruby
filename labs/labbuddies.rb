# 1. create the array (constant)
# 2. randomize it -> .shuffle
# 3. ask how many people to a group
# 4. cut array into smaller groups -> .slice
# 5. put the remainder guy in the last group
# 6. display

require 'pry'

people = ["Adrian", "Larry", "Jasmine", "Raymond","Dustin","Aaron","Chris","Zahra","Avi","Gaurav","Audric","Jon","Derrick","Tim","Chang","Marc","Thomas"]
people.shuffle!

puts "How many to a group?"
response = gets.to_i

if (response == 1)
	puts "You cannot code alone!"
	
elsif (people.length % response == 1)
	(0..(people.length / response - 1)).each do |i|
		array =  people.slice(response*i, response)
		if (i==(people.length / response - 1))
			array.push(people.last)
		end
		puts "Group #{i + 1} is #{array.join(', ')}"
	end
elsif (response > (people.length - 1))
	puts "Everyone is in the same group!"

else
	(0..(people.length / response)).each do |i|
		array =  people.slice(response*i, response)
		puts "Group #{i + 1} is #{array.join(', ')}"
	end
end

binding.pry

# each
# i=0
# people.slice(response*i, response) -> (0,3)
# i=1
# people.slice(response*i, response) -> (3,3)
# i=2
# people.slice(response*i, response) -> (6,3)
# i = 5							-> (15,3)