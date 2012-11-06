require 'pry'

total = 0
(250..180000).each do |x|
	total = total + x
	puts "the sum of the numbers is #{total}"

end


colors = []
puts "Enter a color or (q)uit"
color = gets.chomp

while color != 'q'
	colors << color

	puts "Enter a color or (q)uit"
	color = gets.chomp
end

puts "you entered #{colors.join(', ')}"

