require 'pry'

students = []
puts "Enter information"
student= gets.chomp
students << student


puts "Name?"
student[:name] = gets.chomp
puts "D.O.B?"
student[:dob] = gets.chomp
puts "Gender?"
student[:gender] = gets.chomp
puts "GPA?"
student[:gpa] = gets.chomp
puts "Major?"
student[:major] = gets.chomp


class Student
	attr_accessor :name, :dob, :gender, :gpa, :major

	def initialize (n, d, g, gpa, m)
		@n = n
		@d = d
		@g = g
		@gpa = gpa
		@m = m
	end

	def to_s
		"#{n}, #{a}, #{g}, #{gpa}, #{m}"
	end
end


binding.pry

