require 'pry'

puts "What is your name?"
first = gets.chomp
puts "You typed in " + first

puts "What is the first number?"
a = gets 
a = a.to_f

puts "What is the second number?"
b = gets
b = b.to_f

puts "What is the third number?"
c = gets
c = c.to_f

# d = a + b * c
# e = a ** b
# g = a * b
# f = Math.sqrt(g)

puts "#{first}, your results are d = #{a + b * c}, e = #{a ** b}, f = #{Math.sqrt(a * b)} "

