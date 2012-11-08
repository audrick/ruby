require 'pry'
load 'food.rb'
load 'protein.rb'
load 'carb.rb'

#creating empty array called dinner
dinner = []

puts "Enter a (p)rotein, (c)arb, or (q)uit"
response = gets.chomp

while response != 'q'
  case response

	  when 'p'
		  puts "what is the animal type?"
		  t = gets.chomp
		  puts "what is the calories per serving?"
		  c = gets.chomp.to_i
		  puts "how many servings?"
		  s = gets.chomp.to_i
		  puts "what is the prep time?"
		  p = gets.chomp.to_i

		  item = Protein.new(t, c, s, p)


	  when 'c'
		  puts "what is the grain type?"
		  t = gets.chomp
		  puts "what is the calories per serving?"
		  c = gets.chomp.to_i
		  puts "how many servings?"
		  s = gets.chomp.to_i
		  puts "what is the prep time?"
		  p = gets.chomp.to_i

		  item = Carb.new(t, c, s, p)
  end

  dinner << item
  puts "Enter a (p)rotein, (c)arb, or (q)uit"
  response = gets.chomp

end

# .inject to cycle through dinner array and sum up below
total_calories = dinner.map {|food| food.calories_per_serving * food.number_of_servings}.inject(&:+)
total_prep = dinner.map {|food| food.prep_time}.inject(&:+)

puts "the total calories for this meal: #{total_calories}"
puts "total prep time for this meal: #{total_prep}"


binding.pry

