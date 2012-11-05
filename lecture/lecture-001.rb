require 'pry'
# this is a commment
# use this any time you need to explain something

puts "What is your name?"
first = gets
# version 1 - normal
puts "You typed in " + first

# version 2 - string interpolation
puts "You typed in #{first}"

# version 3 - single quotes do not work with string interpolation
puts 'You typed in #{first}'


puts "Enter an integer?"
a = gets 
a = a.to_i

puts "Enter a floating point number?"
b = gets 
b = b.to_f

c = a + b
puts "The result of #{a} summed with #{b} is #{c}"


# this is how to debug using PRY
binding.pry


puts "What is your age?"
age = gets.to_i

if age < 5
	puts "You are a baby"
elsif (age >= 5) && (age < 18)
	puts "You are a minor"
else
	puts "You are an adult"
end


puts "Enter a letter"
letter = gets.chomp


# case statements

case letter
when "a"
	puts "You typed in a"
when "b"
	puts "You typed in b" 
when "c"
	puts "You typed in c" 
when "d"
	puts "You typed in d" 
when "e"
	puts "You typed in e" 
end


# Looping

puts "Enter a starting number"
start = gets.to_i
puts "Enter an ending number"
stop = gets.to_i

while start <= stop
	puts "Counting #{start}"
	start = start + 1

end


# functions (also called METHODS)

# javascript... this would be function square(a)
# '(a)' is the INPUT....
def square(a)
	a * a
end

# like javascript, the above won't do anything until you go further...

puts "Enter a number to square"
b = gets.to_i
c = square(b)
puts "The square of #{b} is #{c}"


# volume function

def volume (l, w, h)
	l * w * h
end

puts "Length?"
length = gets.to_i
puts "Width?"
width = gets.to_i
puts "Height?"
height = gets.to_i
vol = volume(length, width, height)

puts "The volume of #{length} and #{width} and #{height} is #{vol}"
































