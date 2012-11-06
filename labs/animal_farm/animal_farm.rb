require 'pry'
load 'person.rb'
load 'animal.rb'
load 'farm.rb'

class Person

	attr_accessor :name, :age, :gender

	def initialize(n, a, g)
		@name = n
		@age = a
		@gender = g
	end

	def to_s
	  puts "#{name} is a #{age} old #{gender};"
	end

end

people = []


puts "Do you want to add a person? (y) or (n)?"
add = gets.chomp

while add != "n"
	puts "What is the name?"
	name = gets.chomp

	puts "what is the age?"
	age = gets.to_i

	puts "what is the gender male or female?"
	gender = gets.chomp

	
	people << Person.new(name, age, gender)

	puts "Do you want to add a person? (y) or (n)?"
	add = gets.chomp

end

puts "Here are all the people you created! #{people}"


binding.pry

