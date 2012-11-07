require 'pry'

# Create a student class with a name, date of birth, gender, GPA, major

# initalize a student with Student.new(name, dob, gender, gpa, major)

# create a to_s method

# store all your students in a students array

# print out students array

# students = []
# puts "Enter information"
# student= gets.chomp
# students << student

students = []

class Student
	attr_accessor :name, :dob, :gender, :gpa, :major

	def initialize (n, d, g, gpa, m)
		@name = n
		@dob = d
		@gender = g
		@gpa = gpa
		@major = m
	end

	def to_s
	  "#{name} is a student born on #{dob}, #{gender}, with #{gpa} majoring in #{major}"
	end
end

# hard coding students into code
s1 = Student.new('phil', 'january', 'male', '4.0', 'biology')

s2 = Student.new('tom', 'february', 'male', '3.0', 'chemistry')

s3 = Student.new('mike', 'march', 'male', '3.1', 'law')


students << s1 << s2 << s3

students.each do |student|
	puts student	
end



# creating students using input
# puts "Do you want to add a student? (y)es or (n)o"
# response = gets.chomp
	
# while response != 'n'
# 	puts "Name"
# 	name = gets.chomp
# 	puts "D.O.B?"
# 	dob = gets.chomp
# 	puts "Gender?"
# 	gender = gets.chomp
# 	puts "GPA?"
# 	gpa = gets.chomp
# 	puts "Major?"
# 	major = gets.chomp

# 	s1 = Student.new(name, dob, gender, gpa, major)

# 	students << s1

# 	puts "Do you want to add a student? (y)es or (n)o"
# 	response = gets.chomp
# end

puts students


binding.pry





