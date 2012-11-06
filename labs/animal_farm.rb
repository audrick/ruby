require 'pry'

# defining array called people
people = []

class Person

  attr_accessor :name, :age, :gender

  def initialize (n, a, g)
  	@name = n
  	@age = a
  	@gender = g
  end

# cleans up the print string
  def to_s
  	"#{name}, #{age}, #{gender};"
  end
end

puts "Create a (p)erson or (q)uit"
response = gets.chomp

# start the while loop
while response != 'q'

  puts "What is the name?"
  n = gets.chomp

  puts "What is the age?"
  a = gets.chomp

  puts "What is the gender?"
  g = gets.chomp

  p1 = Person.new(n, a, g)

  people << p1

	puts "Create a (p)erson or (q)uit"
  	response = gets.chomp
end

puts "#{people.to_s}"

binding.pry



